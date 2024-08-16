import matplotlib.pyplot as plt

# 数据
categories = ['OnlyA', 'OnlyAB', 'OnlyAC', 'OnlyAD', 'OnlyABC', 'OnlyABD']
sizes = [36, 12, 3, 5, 1, 1]

# 颜色
colors = [(0.345, 0.345, 0.345, 0.8), (0.737, 0.561, 0.561, 0.8), (0.561, 0.737, 0.561, 0.8),
(0.345, 0.345, 0.345, 0.8), (0.737, 0.561, 0.561, 0.8), (0.561, 0.561, 0.737, 0.8)]

plt.figure(figsize=(8, 6), tight_layout=True)
# 创建柱形图
plt.bar(categories, sizes, color=colors)
font_size = 18
# 添加数值标签
for i, size in enumerate(sizes):
    plt.text(i, size, str(size), ha='center', va='bottom',fontsize=font_size)

plt.text(0.93, 0.9, 'A: Catalog(Definition)\nB: Detection\nC: Refactor\nD: Evaluation',
         transform=plt.gcf().transFigure, fontsize=font_size, ha='right', va='top')
# 添加标题
plt.xticks(fontsize=font_size)
plt.yticks(fontsize=font_size)
# plt.title('Literature sources in the Catalogue(Definition)')
plt.savefig('studies sources in the catalog(definition).jpg', dpi=300)
# 显示图形
plt.show()