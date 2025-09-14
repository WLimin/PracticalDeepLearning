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
### Day 4 深度学习基础 + 神经网络原理/线性神经网络/周六
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
### Day 5 全连接层/线性神经网络/实际操作/周日
  - [X] d2l-torch.pdf:139-155
    + [X] 多层感知机(MLP)实现
    + [X] 关于初始化中缩小*0.01的解释：常用经验值，防止梯度消失或爆炸，可Xavier/He初始化或使用PyTorch内置方法torch.nn.init.xavier_uniform_(W1)
    + [X] 过拟合与正则化深入了解
    + [X] 权重衰减
  - [X] 04_mnist_basics(Part 3)
  - [X] PyTorch模型定义与训练流程
  - [X] PyTorch模型保存/加载
  - [X] PyTorch数据集加载器
### Day 6 基础任务/正则化模型技术/基础理论与概念
  - [X] d2l-torch.pdf:156-216
  - [X] 权重衰减
  - [X] 暂退法（Dropout）
  - [X] 深入前向传播/反向传播/计算图
  - [X] 迁移学习概念介绍
  - [X] 现代深度学习技术/深度学习计算概述
    + 神经网络块(block)
    + 参数访问/管理
    + 延后初始化（defers initialization）
  - 感想：两个书籍各有特色，知识编排有交叉。
    + FastAI一边学习一边引入数学与基础概念，曲线平滑，慢慢深入，工程派，不玩抽象的公式。
    + D2L集中引入公式概念，学院派，和汇编语言很像，陡峭的初学曲线，爬过去后一马平川。
    + 黑话术语jagon不可不知，隔行如山，差不多背后的逻辑是相同的，正所谓大家同摸一象腿，闭眼各说方言土话也。
### Day 7 暂缓/回顾/复习
  - [X] d2l-torch.pdf:180-190
  - [X] 实战Kaggle比赛：预测房价
  - [ ] 图像分类任务实践（MNIST）
  - [ ] CIFAR-10数据集(28x28)实践
  - [X] 模型评估与可视化/tensorboard
  - [X] 斯坦福2021秋季·实用机器学习/概论
    - [X] 1.1/1.2/1.3/1.4数据采集/标注等基础概念
    - [X] 2.1/探索性数据分析（决定如何清洗提升质量）
    - [X] 2.2数据清洗（类型，统一单位/格式/范围区间）
    - [X] 2.3数据变换/2.4特征工程/2.5数据科学家日常就是体力劳动？
### Day 8 CNN基础/CNN深化学习/基本系统组装
  - [X] d2l-torch.pdf:217-231
  - [X] 斯坦福2021秋季·实用机器学习/概论
    - [X] 3.1/3.2/3.3/3.4机器学习模型/线性模型/随机梯度等基础概念
    - [X] 3.5/3.6多层感知机/卷积等基础概念
  - [X] CNN基本概念（卷积、池化、激活）
  - [X] 池化层、批归一化、残差连接
### Day 9 经典CNN网络结构/完成第一阶段/回顾3个课件编排
  - [X] 斯坦福2021秋季·实用机器学习/概论
    - [X] 3.7 循环神经网络
    - [X] 4.1～4.3/5.1～5.4模型评估/验证/拟合/Bagging-多模型平行输出平均期望降低方差(柯西不等式)/Boosting-串联弱模型训练残差来降低偏差/Stacking
  - [X] d2l-torch.pdf:232-247
  - [X] 卷积层计算过程详解
  - [X] CNN网络结构设计
  - [ ] PyTorch中CNN实现
  - [X] 经典CNN网络结构（LeNet, AlexNet）
  - [ ] 图像分类CNN模型构建
  - [X] 【动手学深度学习v2】1-3
### Day 10 卷积神经网络
  - [X] 【动手学深度学习v2】4-10(复习)
  - [X] d2l-torch.pdf:240-243
### Day 11 现代卷积神经网络/周六
  - [X] 【动手学深度学习v2】11过/欠拟合，12权重衰退，13丢弃
  - [X] d2l-torch.pdf:247-312
### Day 12 循环神经网络/周日
  - [X] 【动手学深度学习v2】
    - 14数值稳定性与激活函数,15房价预测，16pytorch基础，17,18，19卷积层，
    - 20填充和步幅，21多通道，22池化，23LeNet，24AlexNet,25VGG,26NiN
  - [X] d2l-torch.pdf:312-315
### Day 13 序列模型/循环神经网络/计算性能
  - [X] d2l-torch.pdf:312-329
  - [X] 【动手学深度学习v2】
    - 27 GoogLeNet,28批量归一化，29残差网络，梯度为什么消失
    - 30图片分类/稠密连接网，31/32/33/34/35 CPU与GPU，TPU与其它，单机多卡并行
### Day 14 循环神经网络/计算性能
  - [X] d2l-torch.pdf:329-335 循环神经网络
    - 503-549 计算性能：编译/异步/并行/多GPU/参数服务器
    - 549-581 计算机视觉：增广/学习迁移（微调）锚框/物体识别
  - [X] 【动手学深度学习v2】
    - 36-43 增广，锚框，物体识别 51-55 序列/文本预处理/语言模型，RNN
### Day 15 现代循环神经网络
  - [X] d2l-torch.pdf
    - 335-358,门控GRU/长短期记忆/深层循环/双向循环
    - 359-381 机器翻译/编码解码器/序列到序列/束搜索
  - [X] 【动手学深度学习v2】
    - 56-59 门控GRU/长短期记忆/深层循环/双向循环
    - 60-63 机器翻译/编码解码器/序列到序列/束搜索
  - [X] 模型调参【斯坦福21秋季：实用机器学习中文版】
### Day 16 注意力机制
  - [X] d2l-torch.pdf:381-415
  - [X] 【动手学深度学习v2】
    - 64 注意力机制, 65 注意力分数，66 seq2seq的注意力，67 自注意力，68 Transformer
### Day 17 注意力机制/优化算法
  - [X] d2l-torch.pdf:416-427-476
  - [X] 【动手学深度学习v2】
    - 68 Transformer
    - 9.2 超参数优化【斯坦福21秋季：实用机器学习中文版】
    - 9.3 网络架构搜索
    - 10.1 深度神经网络架构
    - 11.1 迁移学习
    - 11.2 NLP中的微调
### Day 18 优化算法/周六
  - [X] d2l-torch.pdf:476-503
    - [X] AdaGrad算法
    - [X] RMSProp算法
    - [X] Adadelta
    - [X] Adam算法
    - [X] 学习率调度器
  - [X] d2l-torch.pdf:581-599
    - [X] 目标检测数据集
    - [X] 多尺度/目标/SSD/R-CNN
  - [X] 【动手学深度学习v2】
    -  [X] 44/45 SSD/R-CNN RNN与SSD实现
### Day 19 计算机视觉/自然语言处理：预训练/周日
  - [ ] d2l-torch.pdf:600-649-702
    - [X] 语义分割和数据集
    - [X] 转置卷积
    - [X] 全卷积网络
    - [X] 风格迁移
  - [X] 【动手学深度学习v2】
    - [X] 46 47
### Day 20 自然语言处理：预训练/应用
  - [ ] d2l-torch.pdf:703-741
  - [X] 【动手学深度学习v2】
    - [X] 48-50, 68 BERT, 69,70 BERT微调,72 增加的优化算法
### Day 21 自然语言处理：应用/结束动手学深度学习v2/转入其它
  - [X] d2l-torch.pdf:703-741
### Day 22 英文版多了强化学习/推荐系统等应用/暂时改其它
  - [X] 05_pet_breeds.md 第五章：图像分类 Image Classification
  - AttributeError: 'Styler' object has no attribute 'hide_index'
    对于pandas.__version__ == 2.1.4不适用，仍报错，查官网可知只有hide()属性了，即需将代码改成：
    df.style.hide() 实现隐藏索引列的功能
    隐藏其他列可传入参数subset，如df.style.hide(subset = [0,1,3], axis = 0)
    同时更改的还有设置显示的小数精度，之前版本用的是“df.style.set_precision(2)”，设置带有小数点的列精度调整为小数点后2位，最新版本需将代码改成：
    df.style.format(precision = 2) 实现上述功能
### Day 23 - 25 Other Thing
  - 看到有人开始用术语炫耀了，居然我都清楚概念上是什么，虽然代码不知道
### Day 26 FastAI 06 multicat
  - 多标签分类和回归