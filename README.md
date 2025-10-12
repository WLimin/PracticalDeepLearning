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
## 总体目标
  -  掌握深度学习基础理论和实践
  -  熟练使用PyTorch进行计算机视觉项目
  -  理解YOLO等主流目标检测算法
  -  能够独立完成图像分类、目标检测等任务
  -  了解LLM等常用模型
## 计划
###  第1个月：基础理论与PyTorch入门
####  第1周：Python/NumPy基础 + PyTorch环境搭建
  **目标：掌握Python基础，熟悉PyTorch基本概念**
  -  Day 1-2 (4小时)
      上午：Python基础语法复习（变量、数据类型、控制结构）
      下午：NumPy基础（数组操作、索引、广播机制）
  -  Day 3-4 (4小时)
      上午：PyTorch环境搭建与基本概念介绍
      下午：Tensor操作、自动微分机制
  -  Day 5-7 (4小时)
      上午：PyTorch张量操作、数据加载器
      下午：简单线性回归实现，理解梯度下降
####  第2周：深度学习基础 + 神经网络原理
  **目标：理解神经网络工作原理**
  -  Day 8-9 (4小时)
      上午：神经网络数学基础（激活函数、损失函数）
      下午：前向传播和反向传播原理
  -  Day 10-11 (4小时)
      上午：多层感知机(MLP)实现
      下午：过拟合与正则化概念
  -  Day 12-14 (4小时)
      上午：PyTorch模型定义与训练流程
      下午：图像分类任务实践（MNIST）
####  第3周：卷积神经网络(CNN)基础
  **目标：掌握CNN基本结构和原理**
  -  Day 15-16 (4小时)
      上午：CNN基本概念（卷积、池化、激活）
      下午：卷积层计算过程详解
  -  Day 17-18 (4小时)
      上午：CNN网络结构设计
      下午：PyTorch中CNN实现
  -  Day 19-21 (4小时)
      上午：图像分类CNN模型构建
      下午：CIFAR-10数据集实践
####  第4周：CNN进阶 + 实践项目
  **目标：掌握CNN高级概念，完成简单项目**
  -  Day 22-23 (4小时)
      上午：池化层、批归一化、残差连接
      下午：迁移学习概念介绍
  -  Day 24-25 (4小时)
      上午：经典CNN网络结构（LeNet, AlexNet）
      下午：PyTorch模型保存/加载
  -  Day 26-28 (4小时)
      上午：图像分类完整项目实践
      下午：模型评估与可视化
### 第2个月：计算机视觉核心任务
#### 第5周：目标检测基础
**目标：理解目标检测基本原理**
  -  Day 29-30 (4小时)
    上午：目标检测任务介绍（边界框、IoU）
    下午：传统检测方法回顾
  -  Day 31-32 (4小时)
    上午：滑动窗口与区域建议
    下午：R-CNN系列算法原理
  -  Day 33-35 (4小时)
    上午：YOLO基础概念
    下午：目标检测数据标注格式
#### 第6周：PyTorch视觉项目实践
**目标：完成目标检测项目**
  -  Day 36-37 (4小时)
    上午：准备目标检测数据集
    下午：YOLOv5结构解析
  -  Day 38-39 (4小时)
    上午：YOLO训练流程
    下午：模型推理与可视化
  -  Day 40-42 (4小时)
    上午：目标检测项目实践
    下午：模型优化与调参
#### 第7周：图像分割基础
**目标：掌握语义分割基本概念**
  -  Day 43-44 (4小时)
    上午：图像分割任务介绍
    下午：U-Net网络结构
  -  Day 45-46 (4小时)
    上午：FCN、SegNet等分割网络
    下午：PyTorch分割模型实现
  -  Day 47-49 (4小时)
    上午：实例分割基础
    下午：分割任务完整项目
#### 第8周：项目整合与进阶
**目标：综合运用所学知识**
  -  Day 50-51 (4小时)
    上午：多任务学习概念
    下午：联合训练图像分类+检测
  -  Day 52-53 (4小时)
    上午：模型部署基础（ONNX、TensorRT）
    下午：性能优化技巧
  -  Day 54-56 (4小时)
    上午：项目整合与代码重构
    下午：项目展示准备
  -  Day 57-58 (4小时)
    上午：学习资料整理与复习
    下午：常见问题总结
#### 第9周：迁移学习 + 实战技巧
**目标：掌握实际应用技巧**
  -  Day 59-60 (4小时)
    上午：迁移学习详细原理
    下午：预训练模型使用
  -  Day 61-62 (4小时)
    上午：数据增强技术
    下午：超参数调优方法
  -  Day 63-65 (4小时)
    上午：模型集成方法
    下午：实际项目实践
第3个月：TensorFlow/PyTorch高级应用 + YOLO实战
#### 第10周：TensorFlow基础
**目标：掌握TensorFlow基本使用**
  -  Day 66-67 (4小时)
    上午：TensorFlow 2.x基础概念
    下午：TensorFlow与PyTorch对比
  -  Day 68-69 (4小时)
    上午：TensorFlow数据处理
    下午：TensorFlow模型构建
  -  Day 70-72 (4小时)
    上午：TensorFlow训练流程
    下午：模型部署基础
#### 第11周：YOLO深入学习
**目标：掌握YOLO系列算法**
  -  Day 73-74 (4小时)
    上午：YOLOv1-v5发展历史
    下午：YOLOv5源码解析
  -  Day 75-76 (4小时)
    上午：YOLO训练细节
    下午：YOLO推理优化
  -  Day 77-79 (4小时)
    上午：YOLO改进方法
    下午：自定义YOLO模型
#### 第12周：项目实战 + 总结
**目标：完成综合项目，总结学习成果**
  -  Day 80-81 (4小时)
    上午：选择一个实际应用场景
    下午：完整项目设计与实现
  -  Day 82-83 (4小时)
    上午：项目调试与优化
    下午：性能评估与分析
  -  Day 84-85 (4小时)
    上午：项目文档编写
    下午：学习总结与规划
  -  Day 86-87 (4小时)
    上午：持续学习资源整理
    下午：未来学习路径规划
     
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
    - 27 GoogLeNet，28批量归一化，29残差网络，梯度为什么消失
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
  - 看到有人开始用术语炫耀了，居然我都清楚概念上是什么，虽然代码不知道。
  - **学习的力量，可以自觉清醒时被人忽悠。**

### Day 26 FastAI 06 multicat 07 sizing and tta
  - 多标签分类和回归
  - 第七章：训练一个最先进的模型 测试时间增强（TTA）

### Day 27 FastAI 07 sizing and tta 08 collab
  - 第八章：协同过滤深入探讨 08 Collaborative Filtering Deep Dive
  - 第九章：表格建模深入探讨 09 Tabular Modeling Deep Dive 1/2

### Day 28 FastAI 09 tabular/周二
  - 第九章：表格建模深入探讨 09 Tabular Modeling Deep Dive 2/2
    - 随机森林
    - 袋外误差
    - 一些技巧和建议
  - 本章的代码存在网络问题。Kaggle网站因显示验证代码失败而无法注册。

### Day 29 FastAI 10 nlp/周三半日
  - 第十章：NLP 深入探讨：RNNs 1/2
  - 代码错误：
```#python
/opt/conda/lib/python3.11/site-packages/fastai/callback/fp16.py:47: FutureWarning: `torch.cuda.amp.autocast(args...)` is deprecated. Please use `torch.amp.autocast('cuda', args...)` instead.
  self.autocast,self.learn.scaler,self.scales = autocast(dtype=dtype),GradScaler(**self.kwargs),L()
/opt/conda/lib/python3.11/site-packages/torch/amp/autocast_mode.py:266: UserWarning: User provided device_type of 'cuda', but CUDA is not available. Disabling
  warnings.warn(
/opt/conda/lib/python3.11/site-packages/fastai/callback/fp16.py:47: FutureWarning: `torch.cuda.amp.GradScaler(args...)` is deprecated. Please use `torch.amp.GradScaler('cuda', args...)` instead.
  self.autocast,self.learn.scaler,self.scales = autocast(dtype=dtype),GradScaler(**self.kwargs),L()
/opt/conda/lib/python3.11/site-packages/torch/amp/grad_scaler.py:136: UserWarning: torch.cuda.amp.GradScaler is enabled, but CUDA is not available.  Disabling.
  warnings.warn(
---------------------------------------------------------------------------
OutOfMemoryError                          Traceback (most recent call last)
Cell In[33], line 1
----> 1 learn.fit_one_cycle(1, 2e-2)
```

GPU直接爆显存，CPU运行15分钟以上没有任何进度。从原文看，GPU需要2小时左右训练，估计CPU要几天时间训练！

### Day 30 FastAI 11 midlevel_data/周四只有晚上
  - 第11章：使用 fastai 的中级 API 进行数据整理 Data Munging with fastai's Mid-Level API

### Day 31 FastAI 12 nlp_dive/周五只有早上
  - 第12章：从头开始的语言模型 # A Language Model from Scratch

### Day 31 FastAI 13 convolutions/周六
  - 第12章：从头开始的语言模型 # A Language Model from Scratch
    - 激活正则化和时间激活正则化
  - 第13章：卷积神经网络 # Convolutional Neural Networks

### Day 32 FastAI 14/15 resnet/周日
  - 第13章：卷积神经网络 # Convolutional Neural Networks
  - 第14章：ResNets # ResNets
  - 第15章：应用架构深入探讨 # Application Architectures Deep Dive
    - https://github.com/RethinkFun/DeepLearning https://www.zhihu.com/question/1913413189753877312?

### Day 33 FastAI 16/17 accel_sgd/foundations/半日
  - 第16章：训练过程 # The Training Process
  - 深度学习基础：总结/概念与一般性概述/框架/回调等
  - 第17章：基础神经网络 # A Neural Net from the Foundations

### Day 34 FastAI 18/19/20 CAM/learner/conclusion
  - 第18章：使用 CAM 解释 CNN # CNN Interpretation with CAM
  - 第19章：从头开始创建一个 fastai 学习器 # A fastai Learner from Scratch
  - 第20章：总结思考 # Concluding Thoughts

### Day 35 FastAI
  - 复习
    - 35天学到了什么？
    - 分类问题，如何看待随机性、重复性与复现性？

### Day 36 Reset
  - 为什么？忘记了。

### Day 37 插入RethinkFun
  - 基本内容
    - 前5章是数学基础，基本重复。深度学习的数学基础：包括线性代数，微积分，概率与统计。 
    - 第6/7/8章 从线性回归到全连接神经网络的演进。引入pytorch。引入全连接神经网络。
    - 第9章 传统神经网络的优化：正则化技术/优化器
    - 第10/11章 解决计算机视觉问题的卷积神经网络。
    - 第12/13/14章 循环卷积网络。解决序列问题的循环神经网络。
    - 第15章 大模型的基础架构Transformer网络。
    - 第16/17/18章 时下最热门的大模型，包括GPT，Llama，DeepSeek。
  - 资源：https://www.rethink.fun/
  - github资源是配套的代码与数据。可惜不完整，lfs文件无法下载，包括国内gitee镜像。

### Day 38 插入RethinkFun
  - 复习RethinkFun数学部分1～5章：线代/微分/概率与统计
  - 复习RethinkFun的基础pytorch部分6,7章：张量/张量计算/自动微分/nn.module/神经网络基本流程/逻辑回归
  - 想起来“回归”——多次实验结果回归均值/期望

### Day 38 准备yolo
  - YOLOv5主要网站：
    - https://github.com/ultralytics/yolov5
    - https://github.com/ultralytics/docs
  - 复习RethinkFun 神经网络原理及优化部分8～11章：CNN/RNN/正则/优化/迁移学习
  - 修改学习计划
    - 先从官方GitHub仓库开始，官方文档 + GitHub代码
    - 理论学习：
       - 阅读官方论文
       - 理解YOLO架构
       - 学习损失函数

### Day 39 意外的一天
  - 复习RethinkFun 神经网络原理及优化部分8～11章：CNN/RNN/正则/优化/迁移学习
  - 特别注意：pythorch的张量顺序：chw, channel_first, tonsorflow 采用hwc！一般学术论文里默认采用HWC格式？

### Day 40 不意外的一天
  - 复习RethinkFun 神经网络原理及优化部分11～12章：U-Net/自然语言处理
  - pool还是叫做“池化层”吧，我看着pool怎么也想不起来李沐管它叫什么，最终努力了很久才想起来好像叫做汇聚层，从pool联想到水塘汇聚雨溪还是要绕点弯的，将来或许与别人交流有点问题。

### Day 41 不意外的一天
  - 复习RethinkFun 神经网络原理及优化部分13～15章：RNN/翻译序列/Transformer
  - 更新几个docker。文生图模型对python包要求太严格了，各插件之间干涉严重且复杂。一旦出现问题，只好自己改代码，不能轻易升级，或者升级主要功能，忽视次要需求。
  - 学习时的困扰：没有版本号的说明，各版本之间全靠猜测。例如，gradio-4.40.0～4.44.1依赖gradio-client-1.2.0或1.3.0，然后依赖websockets>=10.0,<13.0，而google-genai 最低要求  google-genai 0.0.1 depends on websockets<15.0dev and >=13.0。websockets-13.0改变巨大，必须gradio>5.3
  - 不挣扎，全放弃。

### Day 42 继续不意外的一天
  - 复习RethinkFun 神经网络原理及优化部分16～18章：BERT/GPT1/2/3/4 已经成为小说了。LIama。DeepSeek。技术内容不多。
  - 全书完成。

### Day 44 休息
  - 整理 AbdBarho/stable-diffusion-webui-forge docker
  - 关于主要属于的英文词汇
  - 量化与蒸馏问题

### Day 45 pytorch
  - 如果不坚持基础，容易走偏。
  - 查找pytorch网站，熟悉相关API。
  - Getting Started with PyTorch
  - open_clip源代码浏览

### Day 46 pytorch网站
  - Deep Learning with PyTorch: A 60 Minute Blitz
  - open_clip源代码浏览

### Day 47 yolo
  - YOLOv1-v5发展历史
  - YOLO基础概念
  - Learning PyTorch with Examples
  - 用哪个：ultralytics/yolov5 和 ultralytics/ultralytics
    - 都有 Docker，后缀丰富，参见各自源代码docker目录下文件名。一般有两个：latest,latest-cpu。当然，还有一些，latest-python
    - ultralytics/yolov5：据说停更了，已经合并到ultralytics/ultralytics。但参考ultralytics/yolov5的docker image更新时间看，仍然在更新。
    - ultralytics/ultralytics： 从docker文件看，默认是yolov11，代码和例子主推yolov8，有yolov5的支持，规模尚待确认（s,m,l,x）等。
    - AI建议新手用ultralytics/ultralytics，也就是说，yolov8
    - 关于推理与export：简单说 export是转化模型格式
  - 决定引入ultralytics/ultralytics吧，然后了解两者的差别，即yolov8与yolov5
  - ultralytics/ultralytics:
    - python:3.11.10-slim-bookworm + yolo11n + ultralytics + pytorch-cpu -> latest-python
      + /bin/bash == latest-cpu
      + jupyterlab == latest-jupyter
  - docker部署
  - 下载https://ultralytics.com/assets/coco2017val.zip 失败：网络原因
  - 混乱的官方docker容器：
    - docker run -it --ipc=host -p 8888:8888  -v "$(pwd)"/datasets:/data/datasets ultralytics/ultralytics:latest-jupyter
    - docker 容器内部
```bash
    /# ls data/
datasets  {datasets,weights,runs}
```
  说明曾经有个命令希望建立data/{datasets,weights,runs}3个目录，失败。

### Day 48 yolo进展
  - YOLO的b站某博士讲解。基础的面对小白讲故事。《YOLO完整系列串讲，2025》
  - 目标检测数据标注格式
  - 准备目标检测数据集
  - 官方网站浏览/使用流程
  - 建议v11版本，通过hub管理模块
  - 封装完整，使用不阅读源代码估计真不行，原因是一但出错无法debug。

### Day 49 yolo进展/忘记日期/半天时间
  - YOLO训练流程
  - YOLO主版本源代码差异

### Day 50 TensorFlow基础/周日
  - 同样的构建工作
    - cuda支持NVIDIA GeForce RTX 5070 Ti Laptop GPU的最低版本号：该GPU属于NVIDIA RTX 50系列，采用Blackwell架构，对应CUDA计算能力为12.0。（来源：https://developer.nvidia.com/cuda-gpus/）
    - ultralytics/yolov5官方镜像：FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime，❌不支持该显卡，且不支持vscode(glibc版本低)，需要重新构建
    - ultralytics/ultralytics官方镜像：FROM pytorch/pytorch:2.8.0-cuda12.8-cudnn9-runtime，✅支持该显卡
  - 重新构建 docker images
    - 目标：
      - 支持 -user $(id -u):$(id -g)
      - 集中管理数据和模型
      - 本地源代码映射

  - **目标：掌握TensorFlow基本使用**
  - TensorFlow 2.x基础概念
  - TensorFlow与PyTorch对比
  - TensorFlow数据处理
  - TensorFlow模型构建
  - TensorFlow训练流程
  - 模型部署基础

### Day 51 TensorFlow基础/周一/半天
  - YOLOv5结构解析
  - YOLOv5源码解析

### Day 52 TensorFlow基础/周二/半天
  - 阅读源代码与论文

  - 模型推理与可视化
  - 目标检测项目实践
    下午：模型优化与调参
#### 第7周：图像分割基础
**目标：掌握语义分割基本概念**
  -  Day 43-44 (4小时)
    上午：图像分割任务介绍
    下午：U-Net网络结构
  -  Day 45-46 (4小时)
    上午：FCN、SegNet等分割网络
    下午：PyTorch分割模型实现
  -  Day 47-49 (4小时)
    上午：实例分割基础
    下午：分割任务完整项目
#### 第8周：项目整合与进阶
**目标：综合运用所学知识**
  -  Day 50-51 (4小时)
    上午：多任务学习概念
    下午：联合训练图像分类+检测
  -  Day 52-53 (4小时)
    上午：模型部署基础（ONNX、TensorRT）
    下午：性能优化技巧
  -  Day 54-56 (4小时)
    上午：项目整合与代码重构
    下午：项目展示准备
  -  Day 57-58 (4小时)
    上午：学习资料整理与复习
    下午：常见问题总结
#### 第9周：迁移学习 + 实战技巧
**目标：掌握实际应用技巧**
  -  Day 59-60 (4小时)
    上午：迁移学习详细原理
    下午：预训练模型使用
    下午：超参数调优方法
  -  Day 63-65 (4小时)
    上午：模型集成方法
    下午：实际项目实践
第3个月：TensorFlow/PyTorch高级应用 + YOLO实战
#### 第11周：YOLO深入学习
**目标：掌握YOLO系列算法**
  -  Day 73-74 (4小时)
  -  Day 75-76 (4小时)
    上午：YOLO训练细节
    下午：YOLO推理优化
  -  Day 77-79 (4小时)
    上午：YOLO改进方法
    下午：自定义YOLO模型
