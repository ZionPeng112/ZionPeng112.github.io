# 自动推送使用说明

## 🚀 快速开始

### 方式一：只启动自动推送（推荐用于生产环境）

```bash
npm run watch
```

这个命令会：
- 监听 `source/` 目录下的所有文件
- 监听 `_config.yml` 和 `_config.next.yml` 配置文件
- 当文件变化时，自动执行：
  1. `git add .` - 添加所有更改
  2. `git commit` - 提交更改（带时间戳）
  3. `git push origin main` - 推送到 GitHub
- GitHub Actions 会自动部署到 https://ZionPeng112.github.io

### 方式二：本地预览 + 自动推送（推荐用于开发）

```bash
npm run dev:auto
```

这个命令会同时启动：
- **Hexo 本地服务器**（http://localhost:4000）- 实时预览网站
- **自动推送脚本** - 文件变化时自动推送到 GitHub

### 方式三：只启动本地预览（不自动推送）

```bash
npm run dev
# 或
hexo server
```

访问 http://localhost:4000 查看网站

## 📝 工作原理

1. **文件监听**：使用 `chokidar` 监听以下文件/目录的变化：
   - `source/**/*` - 所有内容文件（文章、页面等）
   - `_config.yml` - 站点配置
   - `_config.next.yml` - 主题配置
   - `.github/workflows/*.yml` - 部署配置

2. **防抖机制**：文件变化后等待 5 秒再推送，避免频繁提交

3. **自动推送流程**：
   ```
   文件变化 → 等待5秒 → git add → git commit → git push → GitHub Actions 部署
   ```

## ⚙️ 配置说明

### 修改监听路径

编辑 `auto-push.js` 中的 `watchPaths` 数组：

```javascript
const watchPaths = [
  'source/**/*',
  '_config.yml',
  '_config.next.yml',
  // 添加更多路径...
];
```

### 修改防抖延迟

编辑 `auto-push.js` 中的 `DEBOUNCE_DELAY`：

```javascript
const DEBOUNCE_DELAY = 5000; // 改为你想要的毫秒数
```

## 🔐 认证设置

首次使用需要配置 Git 认证：

### 方法一：使用 Personal Access Token（推荐）

1. 在 GitHub 创建 Token：https://github.com/settings/tokens
2. 选择 `repo` 权限
3. 推送时输入 token 作为密码

### 方法二：使用 SSH

```bash
git remote set-url origin git@github.com:ZionPeng112/ZionPeng112.github.io.git
```

## 📊 工作流程

```
你编辑文件
    ↓
自动推送脚本检测到变化
    ↓
等待 5 秒（防抖）
    ↓
git add . → git commit → git push
    ↓
GitHub 收到推送
    ↓
GitHub Actions 自动运行
    ↓
构建并部署到 GitHub Pages
    ↓
2-5 分钟后网站更新
```

## 🛠️ 故障排除

### 推送失败（认证错误）

如果看到认证错误，手动执行：

```bash
git push origin main
```

然后输入你的 GitHub Personal Access Token

### 推送失败（没有更改）

如果显示 "没有需要提交的更改"，这是正常的，说明文件变化已经被忽略（比如临时文件）

### 停止自动推送

按 `Ctrl+C` 停止监听脚本

## 💡 提示

- **本地实时预览**：使用 `npm run dev:auto` 可以在本地实时看到效果（无需等待 GitHub 部署）
- **生产部署**：使用 `npm run watch` 只推送，不启动本地服务器
- **手动推送**：任何时候都可以手动执行 `git push origin main`

## 📚 相关命令

```bash
# 查看本地预览
npm run dev

# 只启动自动推送
npm run watch

# 同时启动预览和自动推送
npm run dev:auto

# 手动生成静态文件
npm run build

# 清理缓存
npm run clean
```
