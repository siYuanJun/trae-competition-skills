#!/bin/bash
# ============================================
# 发布打包脚本
# 生成 tar.gz 发布包，排除开发文件
# ============================================

set -e

# 从 package.json 读取版本号
VERSION=$(node -p "require('./package.json').version" 2>/dev/null || echo "unknown")
ARCHIVE="trae-competition-skills-v${VERSION}.tar.gz"

echo "📦 正在打包 TRAE 竞赛 Skill 包 v${VERSION}..."
echo ""

# 打包：排除 .git、node_modules、系统文件
tar -czf "$ARCHIVE" \
  --exclude='.git' \
  --exclude='.gitignore' \
  --exclude='node_modules' \
  --exclude='.DS_Store' \
  --exclude='Thumbs.db' \
  --exclude='*.swp' \
  skills/ \
  docs/ \
  scripts/ \
  .github/ \
  README.md \
  CONTEXT.md \
  CHANGELOG.md \
  LICENSE \
  package.json

SIZE=$(du -h "$ARCHIVE" | cut -f1)

echo ""
echo "✅ 发布包已生成: $ARCHIVE"
echo "📏 文件大小: $SIZE"
echo ""
echo "发布步骤："
echo "  1. git tag v${VERSION}"
echo "  2. git push origin v${VERSION}"
echo "  3. 在 GitHub Releases 页面上传 $ARCHIVE"
