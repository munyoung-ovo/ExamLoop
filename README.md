# ExamLoop

˶╹ꇴ╹˶ 期末前一周，AI帮我把整本书理清楚了

⦁֊⦁ᐝ 不是背题，是真的懂了

---

ʕ•͈⚇•͈ა **这是什么**

跑在 Claude Code 上的期末冲刺工具
从看资料到做题到出卷，一条线跑完

---

૮⑉･-･⑉ა **四个功能**

- 资料速通 — 上传PPT/PDF，自动提取考点和答题模板
- 出题练习 — 指定考点，按难度出题，自动批改
- 解题讲解 — 粘贴题目，分学科框架讲解
- 模拟出卷 — 生成完整试卷HTML文件

---

꒰ᐢ. .ᐢ꒱ **在线试用**

不想先装环境的话，可以直接在 Socialistic 上试资料速通：

[![Try ExamLoop on Socialistic](https://socialistic.ai/api/embed/examloop-exam-cram-419345?lang=zh)](https://socialistic.ai/zh/skill/examloop-exam-cram-419345?utm_source=github&utm_medium=readme&utm_campaign=20260602-college-study-skill-authors&utm_content=badge)

把课件 PPT/PDF 上传进去，就能先看考点和答题模板；每次试用也会留下 session 记录，方便后面根据真实输入继续打磨 ExamLoop。

---

ᐞ･֊･ᐞฅ **快速开始**

```bash
# 1. 点击右上角绿色按钮 Download ZIP，解压后进入文件夹

# 2. 在文件夹里找到 install.sh，在终端中运行
bash install.sh

# 3. 如有资料，把资料放入 materials/ 文件夹

# 4. 在 outputs/ 文件夹查看生成文件
```

---

ʚ˃ ᵕ ˂ɞ **载入 ExamLoop**

```bash
# 方式一：先载入再使用
skill examloop

# 方式二：直接调用
/examloop 速通

# 载入后直接说触发词
速通   出题   解题   出卷
```

![资料速通](assets/图3.png)
![模拟出卷](assets/图1.png)
![解题讲解](assets/图2.png)