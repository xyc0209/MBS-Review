import matplotlib.pyplot as plt
import numpy as np
import matplotlib.ticker as ticker
from matplotlib import colors
# 数据
characteristics = ['Modularity', 'Maintainability', 'Analyzability','Modifiability','Reusability',
                   'Reliability','Time-behavior','Scalability',  'Confidentiality', 'Testability',
                   'Availability', 'Installability','Integrity',   'Fault tolerance', 'Authenticity',
                 'Interaction capability', 'Performance efficiency', 'Adaptability', 'Resistance',
                   'Compatibility', 'Security', 'Resource utilization', 'Recoverability',  'Learnability', 'Functional completeness',
                   'Accessibility' ]
times = [32, 28, 20, 19,12,10, 10, 9, 9, 8, 7, 7, 5, 5, 5, 4, 3, 3, 2, 2, 1, 1, 1,1,1,1]
types = [18, 15, 15, 16, 5, 9, 6, 6, 9, 7, 5, 6, 5,5, 5, 2, 2, 3, 1, 2,1,1,1,1,1,1]

bar_color = colors.TABLEAU_COLORS['tab:blue']
line_color = colors.TABLEAU_COLORS['tab:purple']

colors = [(0.65, 0.65, 0.65, 0.8),
(0.561, 0.737, 0.561, 0.8)]
# 绘图
fig, ax1 = plt.subplots(figsize=(10, 6))
bars = ax1.bar(range(len(characteristics)), times, color=colors[0])

# 设置横坐标标签斜着显示
ax1.set_xticks(range(len(characteristics)))
ax1.set_xticklabels(characteristics, rotation=45, ha='right')

# 添加数值标签
for bar in bars:
    height = bar.get_height()
    ax1.text(bar.get_x() + bar.get_width() / 2, height, height, ha='center', va='bottom')

# 设置标题和标签
ax1.set_title('')
ax1.set_xlabel('Characteristics')
ax1.set_ylabel('Times')


 # 绘制types的折线图
ax2 = ax1.twinx()
ax2.plot(range(len(characteristics)), types, color=line_color, marker='o', linestyle='-', linewidth=2)
ax2.set_ylabel('Types')

# 设置纵轴刻度为整数
ax2.yaxis.set_major_locator(ticker.MaxNLocator(integer=True))
# 调整布局，防止横坐标标签被裁剪
plt.tight_layout()
plt.savefig('characteristics.jpg', dpi=600)
# 显示图表
plt.show()
# 显示图表
