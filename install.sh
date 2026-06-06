#!/bin/bash
mkdir -p ~/.claude/skills
ln -sf "$(pwd)/ExamLoop.skill" ~/.claude/skills/examloop.md
mkdir -p materials
mkdir -p outputs
echo "安装完成（软链接模式），把你的资料放在 materials/ 文件夹里"
echo "后续执行 git pull 即可获取更新，开新对话生效"
