from matplotlib_venn import venn3
import matplotlib.pyplot as plt

# 设置类别名称和计数
categories_abc = ['Catelog(Definition)', 'Detection', 'Evaluation']
categories_abd = ['Catelog(Definition)', 'Detection', 'Refactor']
counts_abc = [38, 29, 13, 13, 5, 0, 1]
counts_abd = [40, 28, 13, 8, 3, 1, 1]

# 计算各个子集的数量
subsets_abc = (counts_abc[0], counts_abc[1], counts_abc[2], counts_abc[3], counts_abc[4], counts_abc[5], counts_abc[6])
subsets_abd = (counts_abd[0], counts_abd[1], counts_abd[2], counts_abd[3], counts_abd[4], counts_abd[5], counts_abd[6])

font_size = 18
# 创建一个绘图区域，设置画布大小和子图间距
fig, axes = plt.subplots(nrows=1, ncols=2, figsize=(10, 4), sharey=True, tight_layout=True)
fig.subplots_adjust(wspace=0.3)  # 设置子图间的宽度
# 绘制韦恩图 (ABC)
axes[0].set_title('(a)')
v = venn3(subsets=subsets_abc, set_labels=categories_abc, ax=axes[0],
set_colors=[(0.345, 0.345, 0.345, 0.8), (0.737, 0.561, 0.561, 0.8), (0.561, 0.561, 0.737, 0.8)])
# for text in v.set_labels:
#     text.set_fontsize(font_size)
# for glyph in v.glyph.glyphs:
#     glyph.set_text(glyph.get_text(), fontsize=font_size)
# 绘制韦恩图 (ABD)
axes[1].set_title('(b)', loc='center')

venn3(subsets=subsets_abd, set_labels=categories_abd, ax=axes[1],
set_colors=[(0.345, 0.345, 0.345, 0.8), (0.737, 0.561, 0.561, 0.8), (0.561, 0.737, 0.561, 0.8)])

plt.savefig('relationship.jpg', dpi=300)
# 显示图形
plt.show()