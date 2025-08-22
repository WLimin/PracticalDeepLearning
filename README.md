# 我不是斜杠青年/简短说明/没有主题/不定期乱更新

## 记录了本人学习深度学习的进展情况
1. 可能使用的工具
   - qwen-coder3
     * 计划制订
     * 资源提供与解释
   - vscode
     * 编辑器而已
   - docker
     * 不想弄乱环境和快速移植到其它设备
   - Jupyter Notebook
     * 要学习的内容之一
     * 装到docker最好
2. 免费资源  
   **都说免费的是最贵的，我就要最贵的！**
   - 子模块中的两个
    * d2l
    * fastbook
3. 从不缺席的懒惰，与偶尔奋斗的坚持：时间

## 计划与变化
1. 基本参照d2l的主线，结合fastai/fastbook。
2. 目标先坚持8天。
## 进展
### Day 1 基础概念/综述/概览
- [x] 边学边准备环境。已经完成docker构建jupyter, fastai, d2l，使用vscode.
- [x] 01_intro.ipynb
- [x] d2l-zh.pdf:1-39
### Day 2 概览/数学基础/预处理
- [x] 02_production.md
- [x] d2l-torch.pdf:40-63,741-769
- [x] NumPy基础（数组操作、索引、广播机制）
- [x] 深度学习工具
- [x] 数据伦理 03_ethics.md(part1)
  + [x] 追索和问责制的需求
  + [x] 反馈循环
  + [x] 偏见
    * [x] 历史偏见
    * [x] 测量偏见
    * [x] 聚合偏见
    * [x] 表征偏见
  + [x] 虚假信息
- [x] linear algebra
### Day 3 数学基础概念/概述/基本操作
  - [x] 03_ethics.md(part2)
    + [x] 识别和解决伦理问题
  - [ ] d2l-torch.pdf:64-73
    + [ ] 微积分基础概念
    + [ ] 自动微分
  - [ ] Tensor操作、自动微分机制
  - [ ] PyTorch张量操作、数据加载器
### Day 4 深度学习基础 + 神经网络原理
  - [ ] d2l-torch.pdf:73-138
  - [ ] 简单线性回归实现，理解梯度下降
  - [ ] 神经网络数学基础（激活函数、损失函数）
  - [ ] 前向传播和反向传播原理
  - [ ] 多层感知机(MLP)实现
  - [ ] 过拟合与正则化概念
### Day 5 CNN基础/实际操作
  - [ ] 04_mnist_basics(Part 1)
  - [ ] d2l-torch.pdf:139-190
  - [ ] PyTorch模型定义与训练流程
  - [ ] PyTorch模型保存/加载
  - [ ] 图像分类任务实践（MNIST）
  - [ ] CNN基本概念（卷积、池化、激活）
  - [ ] 卷积层计算过程详解
  - [ ] CNN网络结构设计
  - [ ] PyTorch中CNN实现
  - [ ] 经典CNN网络结构（LeNet, AlexNet）
### Day 6 CNN深化学习/基本系统组装
  - [ ] 04_mnist_basics(Part 2)
  - [ ] d2l-torch.pdf:243-283
  - [ ] 池化层、批归一化、残差连接
  - [ ] 迁移学习概念介绍
  - [ ] 图像分类CNN模型构建
### Day 7 暂缓/回顾/复习
  - [ ] d2l-torch.pdf:139-190
  - [ ] 04_mnist_basics(Part 3)
  - [ ] CIFAR-10数据集实践
  - [ ] 图像分类完整项目实践
  - [ ] 模型评估与可视化
