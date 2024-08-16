import matplotlib.pyplot as plt

# 数据
categories = [ '4', '5', '5.5', '6', '6.5', '7','7.5', '8', '8.5','9', '9.5', '10']
sizes = [24, 1, 1, 4, 7, 2, 8, 3,2,  2, 2, 2]

# 颜色
# colors = [(0.114, 0.569, 0.753, 0.6),
# (0.902, 0.420, 0.202, 0.6),
# (0.302, 0.686, 0.290, 0.6),
# (0.800, 0.137, 0.137, 0.6),
# (0.500, 0.376, 0.635, 0.6),
# (0.800, 0.400, 0.671, 0.6),
# (0.525, 0.171, 0.353, 0.6),
# (0.710, 0.671, 0.184, 0.6),
# (0.184, 0.525, 0.710, 0.6),
# (0.353, 0.710, 0.290, 0.6),
# (0.600, 0.257, 0.525, 0.6),
# (0.271, 0.137, 0.800, 0.6)]
colors = [(0.345, 0.345, 0.345, 0.8),
          (0.737, 0.561, 0.561, 0.8),
          (0.561, 0.737, 0.561, 0.8),
          (0.345, 0.345, 0.345, 0.8),
          (0.737, 0.561, 0.561, 0.8),
          (0.561, 0.561, 0.737, 0.8),
          (0.5, 0.5, 0.5, 0.8),
          (0.65, 0.65, 0.65, 0.8),
          (0.8, 0.8, 0.8, 0.8),
          (0.4, 0.4, 0.4, 0.8),
          (0.55, 0.55, 0.55, 0.8),
          (0.7, 0.7, 0.7, 0.8)]
colors1 = [  (0.561, 0.737, 0.561, 0.8),
             (0.561, 0.561, 0.737, 0.8)]
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(9, 4),  tight_layout=True)
# 创建柱形图
ax1.bar(categories, sizes, color=colors)

# 添加数值标签
for i, size in enumerate(sizes):
    ax1.text(i, size, str(size), ha='center', va='bottom', fontsize=12)

# 添加标题
# plt.title('Study Quality Scores')
plt.subplots_adjust(left=0.1, right=0.95, top=0.95)
ax1.set_xlabel('Score')
ax1.set_ylabel('Num')
ax1.set_title('(a) Study Quality Scores', fontsize=14)

ax2.pie([3,32], labels=['Excluded', 'Selected'], colors=colors1, autopct='%1.1f%%', startangle=90, textprops={'fontsize': 14})
ax2.set_title('(b) Percentage of Selected study', fontsize=14)
plt.subplots_adjust(wspace=0.4)
output_file = "study-quality-score.jpg"

plt.savefig(output_file, format='jpeg', dpi=400)  # 设置dpi参数可以调整图像
# 显示图形
plt.show()