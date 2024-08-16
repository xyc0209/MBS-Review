import matplotlib.pyplot as plt
import numpy as np

# 定义横轴和纵轴标签
x_labels = ['Catalog\n(Definition)', 'Detection', 'Refactor', 'Evaluation', 'SS']
y_labels = ['1', '2', '3', '4', '5']

# 创建数据矩阵
cell_data = [['', '✓', '', '✓', ''],
              ['✓', '', '✓', '', '✓'],
              ['', '✓', '', '✓', ''],
              ['✓', '', '✓', '', '✓'],
              ['', '✓', '', '✓', '']]

# 创建图表
fig, ax = plt.subplots(figsize=(8, 6))
ax.set_axis_off()  # 隐藏坐标轴

# 创建表格
table = ax.table(cellText=cell_data,
                 rowLabels=y_labels,
                 colLabels=x_labels,
                 cellLoc='center',
                 loc='center')

# 设置表格样式
table.auto_set_font_size(False)
table.set_fontsize(16)
table.scale(1.5, 1.5)  # 调整单元格大小

# 设置 xlabel 为斜体
# for i, label in enumerate(x_labels):
#     table.get_celld()[(0, i)].set_text_props(fontname='DejaVu Sans', fontweight='italic')

# 设置单元格边界线为无
# table.auto_set_column_width(col=list(range(len(x_labels))))
# [table.get_celld()[(i, j)].set_linestyle('') for i in range(len(y_labels)) for j in range(len(x_labels))]

# 添加标题
ax.set_title('Example Table', fontsize=20)

plt.savefig('example_table.jpg', dpi=300)
plt.show()