#!/usr/bin/env node

const { execSync } = require('child_process');
const chokidar = require('chokidar');
const path = require('path');

// 需要监听的文件和目录
const watchPaths = [
  'source/**/*',
  '_config.yml',
  '_config.next.yml',
  '.github/workflows/*.yml'
];

// 忽略的文件
const ignored = [
  '**/node_modules/**',
  '**/.git/**',
  '**/public/**',
  '**/.deploy*/**',
  '**/db.json',
  '**/*.log'
];

let pushTimeout = null;
const DEBOUNCE_DELAY = 5000; // 5秒防抖，避免频繁推送

function autoPush() {
  try {
    console.log('\n📝 检测到文件变化，准备自动推送...\n');
    
    // 检查是否有未提交的更改
    const status = execSync('git status --porcelain', { encoding: 'utf-8' });
    if (!status.trim()) {
      console.log('✅ 没有需要提交的更改\n');
      return;
    }

    // 添加所有更改
    console.log('📦 添加文件到暂存区...');
    execSync('git add .', { stdio: 'inherit' });

    // 生成提交信息
    const timestamp = new Date().toLocaleString('zh-CN');
    const commitMessage = `Auto commit: ${timestamp}`;
    
    console.log('💾 提交更改...');
    execSync(`git commit -m "${commitMessage}"`, { stdio: 'inherit' });

    console.log('🚀 推送到 GitHub...');
    execSync('git push origin main', { stdio: 'inherit' });

    console.log('\n✅ 自动推送完成！GitHub Actions 将自动部署网站。\n');
    console.log('🌐 网站地址: https://ZionPeng112.github.io\n');
  } catch (error) {
    console.error('\n❌ 自动推送失败:', error.message);
    console.log('💡 提示: 如果是认证问题，请在终端手动执行: git push origin main\n');
  }
}

function debouncedPush() {
  if (pushTimeout) {
    clearTimeout(pushTimeout);
  }
  
  pushTimeout = setTimeout(() => {
    autoPush();
  }, DEBOUNCE_DELAY);
}

console.log('👀 开始监听文件变化...\n');
console.log('📁 监听目录:');
watchPaths.forEach(p => console.log(`   - ${p}`));
console.log('\n💡 提示: 文件变化后会在 5 秒后自动推送（防抖机制）\n');
console.log('按 Ctrl+C 停止监听\n');

// 创建监听器
const watcher = chokidar.watch(watchPaths, {
  ignored: ignored,
  persistent: true,
  ignoreInitial: true
});

watcher
  .on('change', (filePath) => {
    const relativePath = path.relative(process.cwd(), filePath);
    console.log(`📝 文件已修改: ${relativePath}`);
    debouncedPush();
  })
  .on('add', (filePath) => {
    const relativePath = path.relative(process.cwd(), filePath);
    console.log(`➕ 新文件: ${relativePath}`);
    debouncedPush();
  })
  .on('unlink', (filePath) => {
    const relativePath = path.relative(process.cwd(), filePath);
    console.log(`🗑️  文件已删除: ${relativePath}`);
    debouncedPush();
  })
  .on('error', (error) => {
    console.error('❌ 监听错误:', error);
  });
