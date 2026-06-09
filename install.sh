#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "脚本目录：$SCRIPT_DIR"
mkdir -p "$HOME/.claude/skills"
ln -sf "$SCRIPT_DIR/ExamLoop.skill" "$HOME/.claude/skills/examloop.md"
if [ $? -eq 0 ]; then
  echo "安装完成（软链接模式），把你的资料放在 materials/ 文件夹里"
  echo "后续执行 git pull 即可获取更新，开新对话生效"
else
  cp "$SCRIPT_DIR/ExamLoop.skill" "$HOME/.claude/skills/examloop.md"
  if [ $? -eq 0 ]; then
    echo "安装完成（复制模式），把你的资料放在 materials/ 文件夹里"
    echo "注意：复制模式下 git pull 后需重新运行 install.sh 才能更新"
  else
    echo "安装失败，请手动把 ExamLoop.skill 复制到 ~/.claude/skills/examloop.md"
  fi
fi
mkdir -p "$SCRIPT_DIR/materials"
mkdir -p "$SCRIPT_DIR/outputs"
read -p "按 Enter 关闭..."
