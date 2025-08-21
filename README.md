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
[x] 1 基础概念/综述/概览
      - 边学边准备环境。已经完成docker构建jupyter, fastai, d2l，使用vscode.
      - 01_intro.ipynb
      - d2l-zh.pdf:1-39
[x] 2 概览/数学基础/预处理
      - 02_production.md
      - d2l-torch.pdf:40-63,741-769
      - NumPy基础（数组操作、索引、广播机制）
      - 深度学习工具
[ ] 3
      - 03_ethics.md(part1)
      - d2l-torch.pdf:64-73
      - Tensor操作、自动微分机制
      - PyTorch张量操作、数据加载器
[ ] 4 深度学习基础 + 神经网络原理
      - 03_ethics.md(part2)
      - d2l-torch.pdf:73-138
      - 简单线性回归实现，理解梯度下降
      - 神经网络数学基础（激活函数、损失函数）
      - 前向传播和反向传播原理
      - 多层感知机(MLP)实现
      - 过拟合与正则化概念
[ ] 5
      - d2l-torch.pdf:139-190
      - PyTorch模型定义与训练流程
      - PyTorch模型保存/加载
      - 图像分类任务实践（MNIST）
      - CNN基本概念（卷积、池化、激活）
      - 卷积层计算过程详解
      - CNN网络结构设计
      - PyTorch中CNN实现
      - 经典CNN网络结构（LeNet, AlexNet）
[ ] 6
      - d2l-torch.pdf:243-283
      - 池化层、批归一化、残差连接
      - 迁移学习概念介绍
      - 图像分类CNN模型构建
[ ] 7
      - d2l-torch.pdf:139-190
      - CIFAR-10数据集实践
      - 图像分类完整项目实践
      - 模型评估与可视化
