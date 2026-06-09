#!/bin/bash
REMOTE_URL="https://raw.githubusercontent.com/munyoung-ovo/ExamLoop/main/SKILL.md"

LOCAL=$(grep '^version:' ~/.claude/skills/examloop.md 2>/dev/null | cut -d'"' -f2)
REMOTE=$(curl -fsSL "$REMOTE_URL" | grep '^version:' | cut -d'"' -f2)

if [ -z "$REMOTE" ]; then
  echo "无法连接到 GitHub，请检查网络后重试"
  exit 1
fi

if [ "$LOCAL" = "$REMOTE" ]; then
  echo "当前已是最新版本 v$LOCAL，无需更新"
else
  curl -fsSL "$REMOTE_URL" > ~/.claude/skills/examloop.md
  echo "已从 v${LOCAL:-未知} 更新到 v$REMOTE，开新对话即可生效"
fi
