import matplotlib.pyplot as plt

# 数据
categories = ['Catelog(Definition)', 'Detection', 'Refactor', 'Evaluation']
sizes = [57, 44, 13, 17]

# 颜色
colors = [(0.345, 0.345, 0.345, 0.8),
(0.737, 0.561, 0.561, 0.8),
(0.561, 0.737, 0.561, 0.8),
(0.561, 0.561, 0.737, 0.8)]

# 创建柱形图
plt.figure(figsize=(9, 6), tight_layout=True) # 设置图片尺寸并缩短留白
plt.bar(categories, sizes, color=colors)
font_size = 18
# 添加数值标签
for i, size in enumerate(sizes):
    plt.text(i, size, str(size), ha='center', va='bottom', fontsize=font_size)
plt.xticks(fontsize=font_size)
plt.yticks(fontsize=font_size)

# 添加标题
# plt.title('Categories of studies')

plt.savefig('categories_of_studies.jpg', dpi=300)
# 显示图形
plt.show()