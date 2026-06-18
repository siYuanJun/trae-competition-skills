#!/bin/bash
# ============================================
# Skill 结构完整性校验脚本
# 检查所有必要文件是否存在
# ============================================

set -e

echo "🔍 正在校验 Skill 项目结构..."
echo ""

ERRORS=0
WARNINGS=0

# ---- 必要文件清单 ----
required_files=(
  "skills/trae-competition/SKILL.md"
  "skills/trae-competition/scripts/select-topics.md"
  "skills/trae-competition/scripts/generate-post.md"
  "skills/trae-competition/scripts/generate-html.md"
  "skills/trae-competition/scripts/quality-check.md"
  "skills/trae-competition/references/competition-rules.md"
  "skills/trae-competition/references/track-guide.md"
  "CONTEXT.md"
  "README.md"
  "LICENSE"
)

echo "📁 检查必要文件..."
for file in "${required_files[@]}"; do
  if [ ! -f "$file" ]; then
    echo "  ❌ 缺失: $file"
    ERRORS=$((ERRORS + 1))
  else
    echo "  ✅ $file"
  fi
done

# ---- 可选文件 ----
optional_files=(
  "docs/快速上手指南.md"
  "docs/项目架构说明.md"
  "CHANGELOG.md"
  ".github/workflows/validate.yml"
)

echo ""
echo "📁 检查可选文件..."
for file in "${optional_files[@]}"; do
  if [ ! -f "$file" ]; then
    echo "  ⚠️  可选文件缺失: $file"
    WARNINGS=$((WARNINGS + 1))
  else
    echo "  ✅ $file"
  fi
done

echo ""
if [ $ERRORS -eq 0 ]; then
  echo "🎉 所有必要文件校验通过！"
  if [ $WARNINGS -gt 0 ]; then
    echo "⚠️  有 $WARNINGS 个可选文件缺失（不影响正常使用）"
  fi
  exit 0
else
  echo "❌ 发现 $ERRORS 个缺失的必要文件，请补充后重试。"
  exit 1
fi
