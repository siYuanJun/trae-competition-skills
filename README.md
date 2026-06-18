# TRAE AI创造力大赛 · 参赛助手 Skill

> 🚀 一套 AI Skill 工具包，帮你从零到一完成 TRAE AI 创造力大赛参赛作品。
> 覆盖**选题 → 文案 → 质检 → 物料**全流程，零代码也能做出合规参赛材料。

## 一句话介绍

把全套 Skill 文件发给 AI 助手（ChatGPT / Claude / Trae 等），告诉它你想参加的赛道方向，AI 会全自动产出：

- ✅ 4个优质创意选题
- ✅ 合规报名帖文案（四大模块、≥120字）
- ✅ TRAE Work HTML 交互页面生成指令
- ✅ 投稿合规自检清单

## 🔗 官方链接

| 链接 | 地址 |
|------|------|
| 🏠 大赛官网 | [https://www.trae.cn/ai-creativity](https://www.trae.cn/ai-creativity?utm_source=community) |
| 🏆 领取速通奖励 | [https://www.trae.cn/ai-creativity/result](https://www.trae.cn/ai-creativity/result) |
| 📝 报名专区 | [https://forum.trae.cn/c/38-category/39-category/39](https://forum.trae.cn/c/38-category/39-category/39) |
| 🎯 初赛专区 | [https://forum.trae.cn/c/38-category/40-category/40](https://forum.trae.cn/c/38-category/40-category/40) |
| 💬 大赛交流专区 | [https://forum.trae.cn/c/38-category/41-category/41](https://forum.trae.cn/c/38-category/41-category/41) |

## 快速开始

### 前置条件
- 任意支持 Skill / 提示词加载的 AI 助手（Trae、Claude Code、Cursor 等）
- 已注册 TRAE AI 创造力大赛参赛资格

### 3步上手

```bash
# 1. 克隆项目
git clone https://github.com/siYuanJun/trae-competition-skills.git
cd trae-competition-skills

# 2. 将 skills/trae-competition/ 目录作为 Skill 加载到你的 AI 助手

# 3. 告诉 AI 开始工作
#    新手：用标准模式，赛道选社会服务
#    老手：快速出稿，赛道选社会公益
```

### 支持的5个赛道

| 赛道名称 | 核心方向 | 审核友好度 |
|----------|----------|-----------|
| 🏫 学习工作 | 效率工具、知识管理、在线学习 | ⭐⭐⭐ |
| 🎮 生活娱乐 | 休闲娱乐、生活服务、兴趣社交 | ⭐⭐⭐ |
| 🏛️ 社会服务 | 政务便民、适老化、社区治理 | ⭐⭐⭐⭐⭐ |
| 💚 社会公益 | 反诈科普、环保公益、弱势关怀 | ⭐⭐⭐⭐⭐ |
| 🔧 硬件交互 | IoT控制、智能设备、传感器 | ⭐⭐⭐ |

> 💡 **推荐**：新手建议从「社会服务」或「社会公益」入手，政策贴合度高，审核通过率最有保障。

## 项目结构

```
trae-competition-skills/
├── skills/trae-competition/
│   ├── SKILL.md                  # ★ 主入口：总调度指令
│   ├── scripts/
│   │   ├── select-topics.md      # 阶段1：选题筛选
│   │   ├── generate-post.md      # 阶段2：文案生成
│   │   ├── generate-html.md      # 阶段4：HTML物料
│   │   └── quality-check.md      # 阶段3：合规质检
│   └── references/
│       ├── competition-rules.md  # 赛事规则参考
│       └── track-guide.md        # 赛道详细说明
├── docs/                         # 中文文档
├── scripts/                      # 工具脚本
├── CONTEXT.md                    # AI 加载说明
└── README.md                     # 你正在看的这个
```

## 两种使用模式

### 标准分步模式（推荐新手）
AI 会按**选题 → 文案 → 质检 → 物料 → 汇总**的顺序逐步执行，每一步可确认调整。

### 快速一键模式（适合老手）
AI 一次性输出全部材料，省去中间确认步骤。

## 真实案例

小李第一次参赛，只剩3天，快放弃了。按这套流程走：

- **第1天**：选题工具从「银龄数字桥、反诈卫士、碳迹计算器、心灵驿站」中筛出「银龄数字桥」
- **第2天**：文案工具生成完整帖子，质检工具揪出两处格式问题
- **第3天**：HTML物料自动生成，当天提交 → 当天通过初审

> 之前光选题能耗半天，现在全套不到三天，效率提升 5倍+。

## 常见问题

**Q: 我需要会写代码吗？**
A: 完全不需要。你只需要把 Skill 文件加载到 AI 助手，告诉它赛道方向就行。

**Q: 支持哪些 AI 助手？**
A: 任何支持加载外部 Skill / 提示词的工具都可以，包括 Trae、Claude Code、Cursor、ChatGPT 等。

**Q: 生成的帖子和 HTML 需要改吗？**
A: 基本不用。所有产出已按官方模板格式生成，你可以微调创意细节后再提交。

## 适用场景
- 参加 TRAE AI 创造力大赛的个人开发者
- 需要快速产出合规参赛材料的团队
- 学习 AI Skill / Prompt 工程实践的开发者

## 开源协议
[MIT License](LICENSE)
