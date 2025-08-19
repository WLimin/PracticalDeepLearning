import matplotlib
#matplotlib.use('TkAgg')  # 或 'GTK3Agg'
import matplotlib.pyplot as plt
import numpy as np

import matplotlib.font_manager as fm
#print([f.name for f in fm.fontManager.ttflist ])

#plt.rcParams['font.sans-serif'] = ['SimHei'] #黑体，要处理负号
#plt.rcParams['axes.unicode_minus'] = False  # 正确显示负号
plt.rcParams['font.sans-serif'] = ['Source Han Serif CN'] #思源
# 创建示例数据
x = np.linspace(0, 10, 100)
y = np.sin(x)

# 绘制图形
plt.plot(x, y)
plt.title('Matplotlib with GTK Support 汉字')
plt.xlabel('X轴')
plt.ylabel('Y轴')

# 显示图像
plt.show()
