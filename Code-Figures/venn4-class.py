import matplotlib.pyplot as plt
import warnings
import venn

warnings.filterwarnings("ignore")

a = [12, 9, 6, 13, 10, 12]
b = [8, 6, 10, 7, 9, 11]
c = [11, 12, 9, 12, 13, 9]
d = [6, 12, 5, 12, 10, 9]

a1 = set(a)
b1 = set(b)
c1 = set(c)
d1 = set(d)

labels = venn.generate_petal_labels([a1, b1, c1, d1])

venn.venn3(labels, names=list('abcd'), dpi=200)

plt.rcParams['font.sans-serif'] = ['SimHei']  # 中文
plt.title('韦恩图', fontsize=15)
plt.show()