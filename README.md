# 我不是斜杠青年/简短说明/没有主题/不定期乱更新

## 记录了本人学习深度学习的进展情况
1. 可能使用的工具
   - qwen-coder3:30b
     * 计划制订
     * 资源提供与解释
       * 彻底放弃这个LLM的SVG绘图，不靠谱，成功的概率密度为0e-99
       * 提示词：在svg上绘制函数y=f(x)=x3−x1​和其在x=1处切线的图像,x的区间定义为(0,4]。 
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
## 容器目录列表

```console
./data/FashionMNIST/raw
./cache/fastai/data/mnist_sample
./cache/fastai/data/imdb_tok
./cache/fastai/data/oxford-iiit-pet
./cache/fastai/data/imdb
./cache/fastai/models/wt103-fwd
./cache/torch/hub/checkpoints
./cache/matplotlib
./cache/nltk_data
./fastbook/images
./fastbook/tools
./fastbook/translations/cn
./fastbook/clean
./d2l-zh
./d2l-zh/d2l
./d2l-zh/chapter_installation
./.vscode
下载的Jupyter noetbook d2l-zh.zip 解压缩到 ./doc/d2l-zh
./doc/d2l-zh/mxnet
./doc/d2l-zh/tensorflow
./doc/d2l-zh/pytorch
./doc/d2l-zh/pytorch/chapter_recurrent-neural-networks
./doc/d2l-zh/pytorch/chapter_multilayer-perceptrons
./doc/d2l-zh/pytorch/chapter_convolutional-modern
./doc/d2l-zh/pytorch/chapter_attention-mechanisms
./doc/d2l-zh/pytorch/chapter_optimization
./doc/d2l-zh/pytorch/chapter_deep-learning-computation
./doc/d2l-zh/pytorch/chapter_appendix-tools-for-deep-learning
./doc/d2l-zh/pytorch/chapter_references
./doc/d2l-zh/pytorch/chapter_computer-vision
./doc/d2l-zh/pytorch/chapter_introduction
./doc/d2l-zh/pytorch/chapter_introduction/.ipynb_checkpoints
./doc/d2l-zh/pytorch/img
./doc/d2l-zh/pytorch/img/frontends
./doc/d2l-zh/pytorch/chapter_convolutional-neural-networks
./doc/d2l-zh/pytorch/.ipynb_checkpoints
./doc/d2l-zh/pytorch/chapter_notation
./doc/d2l-zh/pytorch/chapter_notation/.ipynb_checkpoints
./doc/d2l-zh/pytorch/chapter_preface
./doc/d2l-zh/pytorch/chapter_preface/.ipynb_checkpoints
./doc/d2l-zh/pytorch/chapter_preliminaries
./doc/d2l-zh/pytorch/chapter_recurrent-modern
./doc/d2l-zh/pytorch/chapter_computational-performance
./doc/d2l-zh/pytorch/chapter_linear-networks
./doc/d2l-zh/pytorch/chapter_natural-language-processing-pretraining
./doc/d2l-zh/pytorch/chapter_natural-language-processing-applications
./doc/d2l-zh/pytorch/chapter_installation
./doc/d2l-zh/pytorch/chapter_installation/.ipynb_checkpoints
./doc/d2l-zh/paddle
./doc/d2l-zh/paddle/chapter_recurrent-neural-networks
./doc/d2l-zh/paddle/chapter_multilayer-perceptrons
./doc/d2l-zh/paddle/chapter_convolutional-modern
./doc/d2l-zh/paddle/chapter_attention-mechanisms
./doc/d2l-zh/paddle/chapter_optimization
./doc/d2l-zh/paddle/chapter_deep-learning-computation
./doc/d2l-zh/paddle/chapter_appendix-tools-for-deep-learning
./doc/d2l-zh/paddle/chapter_references
./doc/d2l-zh/paddle/chapter_computer-vision
./doc/d2l-zh/paddle/chapter_introduction
./doc/d2l-zh/paddle/img
./doc/d2l-zh/paddle/img/frontends
./doc/d2l-zh/paddle/chapter_convolutional-neural-networks
./doc/d2l-zh/paddle/chapter_notation
./doc/d2l-zh/paddle/chapter_preface
./doc/d2l-zh/paddle/chapter_preliminaries
./doc/d2l-zh/paddle/chapter_recurrent-modern
./doc/d2l-zh/paddle/chapter_computational-performance
./doc/d2l-zh/paddle/chapter_linear-networks
./doc/d2l-zh/paddle/chapter_natural-language-processing-pretraining
./doc/d2l-zh/paddle/chapter_natural-language-processing-applications
./doc/d2l-zh/paddle/chapter_installation
./docker
```
## 计划与变化
1. 基本参照d2l的主线，结合fastai/fastbook。
2. 目标先坚持8天。
3. 想知道计划和进展的变化？当然有，非常详细！你知道该从哪里找。
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
  - [x] d2l-torch.pdf:64-73
    + [X] 微积分基础概念
    + [x] 自动微分--需要以后再消化/记忆公式推导
  - [X] 04_mnist_basics(Part 1) 第四章：底层：训练数字分类器
    + [X] Tensor操作、自动微分机制
    + [X] PyTorch张量操作
      * 张量形状(shape)的长度(length)是其秩(rank), 秩是张量中轴(axes)或维度(dimensions)的数量；形状是张量每个轴的大小。
      * 感到困惑时，将所有陈述转换为秩、轴和长度这些明确的术语。例如，三维向量v描述长宽高，但描述六面体坐标的v2是秩为一的张量，这意味着它只有一个轴（即使该轴的长度为三）。
  - [X] 前向传播和反向传播原理
  - [X] 过拟合与正则化概念
### Day 4 深度学习基础 + 神经网络原理/线性神经网络
  - [X] d2l-torch.pdf:73-126
    + 容器内添加一个小补丁，原因是d2l版本问题。在patch.sh中从0.7升级到1.0.3，和notebook不匹配(train_ch3丢失)。
      + cp /app/d2l-zh/d2l/torch.py ~/deep_learn/lib/python3.11/site-packages/d2l
      + ln -s /app/data/ /app/doc/d2l-zh/pytorch/
  - [X] 04_mnist_basics(Part 2)
    + 个人感觉：训练模型的7步和PID的控制思想一致，只是术语不同。
  - [X] 概率论与数理统计回顾
  - [X] 简单线性回归实现，理解梯度下降
  - [X] 神经网络数学基础（激活函数、损失函数）
  - [X] 不要相信04_mnist_basics灌输的“只要高中数学基础”。印象中的高中数学没有学习过概率论/偏导数之类的。
### Day 5 全连接层/线性神经网络/实际操作
  - [ ] d2l-torch.pdf:139-155
    + [X] 多层感知机(MLP)实现
    + [X] 关于初始化中 缩小*0.01 的解释：常用经验值，防止梯度消失或爆炸，可Xavier/He初始化或使用PyTorch内置方法torch.nn.init.xavier_uniform_(W1)
    + [X] 过拟合与正则化深入了解
    + [X] 权重衰减
  - [X] 04_mnist_basics(Part 3)
  - [X] PyTorch模型定义与训练流程
  - [ ] PyTorch模型保存/加载
  - [X] PyTorch数据集加载器
  - [ ] 图像分类任务实践（MNIST）
### Day 6 基础任务/正则化模型技术
  - [ ] d2l-torch.pdf:156-190
  - [ ] 权重衰减
  - [ ] 暂退法（Dropout）
### Day 7 CNN基础/CNN深化学习/基本系统组装
  - [ ] CNN基本概念（卷积、池化、激活）
  - [ ] 池化层、批归一化、残差连接
  - [ ] 卷积层计算过程详解
  - [ ] CNN网络结构设计
  - [ ] PyTorch中CNN实现
  - [ ] 经典CNN网络结构（LeNet, AlexNet）
  - [ ] 迁移学习概念介绍
  - [ ] 图像分类CNN模型构建
### Day 8 暂缓/回顾/复习
  - [ ] d2l-torch.pdf:139-190
  - [ ] 04_mnist_basics(Part 3)
  - [ ] CIFAR-10数据集实践
  - [ ] 图像分类完整项目实践
  - [ ] 模型评估与可视化
