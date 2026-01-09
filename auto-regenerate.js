#!/usr/bin/env node

const { execSync } = require('child_process');
const chokidar = require('chokidar');
const path = require('path');

// 需要监听的文件和目录
const watchPaths = [
  'source/**/*',
  '_config.yml',
  '_config.next.yml'
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

let regenerateTimeout = null;
const DEBOUNCE_DELAY = 1000; // 1秒防抖

function regenerate() {
  try {
    console.log('\n🔄 检测到文件变化，重新生成页面...\n');
    execSync('npx hexo generate', { stdio: 'inherit' });
    console.log('\n✅ 页面已重新生成！刷新浏览器查看更新。\n');
  } catch (error) {
    console.error('\n❌ 重新生成失败:', error.message);
  }
}

function debouncedRegenerate() {
  if (regenerateTimeout) {
    clearTimeout(regenerateTimeout);
  }
  
  regenerateTimeout = setTimeout(() => {
    regenerate();
  }, DEBOUNCE_DELAY);
}

console.log('👀 开始监听文件变化（自动重新生成）...\n');
console.log('📁 监听目录:');
watchPaths.forEach(p => console.log(`   - ${p}`));
console.log('\n💡 提示: 文件变化后会在 1 秒后自动重新生成页面\n');
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
    debouncedRegenerate();
  })
  .on('add', (filePath) => {
    const relativePath = path.relative(process.cwd(), filePath);
    console.log(`➕ 新文件: ${relativePath}`);
    debouncedRegenerate();
  })
  .on('unlink', (filePath) => {
    const relativePath = path.relative(process.cwd(), filePath);
    console.log(`🗑️  文件已删除: ${relativePath}`);
    debouncedRegenerate();
  })
  .on('error', (error) => {
    console.error('❌ 监听错误:', error);
  });
