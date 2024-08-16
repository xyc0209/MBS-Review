import matplotlib.pyplot as plt
import numpy as np

# 准备数据
labels = ['Poor restful API Design', 'CRUDY interface', 'Ambiguous service', 'Bloated service', 'Whatever types', 'No API versioning', 'Unstable API', 'Cross API','Dismiss documentation', 'Low cohesive operations', 'Stovepipe service',
          'Data service', 'Nano microservice', 'Mega microservicee', 'Insufficient message traceability', 'Use of complex API calls when messaging is a simpler solution', 'Use of business logic in communication among services', 'Hardcoded endpoints', 'Lack of communication standards among microservices', 'Empty messages', 'Timeout', 'Wobbly service interactions',
          'Service chain', 'Chatty services', 'Bottleneck service', 'Chaotic independence', 'Cyclic dependency', 'Sand pile', 'Knot service', 'Hub-like dependency', 'Unstable dependency', 'Implicit cross-module dependency', 'Unnecessary settings', 'ESB usage', 'No API-gateway',
          'No service discovery', 'Microservice greedy', 'Wrong cuts', 'Duplicated services', 'Scattered functionality', 'Nobody home', 'Sharing persistence', 'Inappropriate service intimacy',
          'Own crypto code', 'Non-encrypted data exposure', 'Hardcoded secrets', 'Non-secured service-to-service communications', 'Insufficient access control', 'Publicly accessible microservices', 'Unnecessary privileges to microservices',
          'Unauthenticated traffic', 'Multiple user authentication', 'Centralized authorization', 'Nonhomogeneous adoption', 'Local logging', 'Multiple services per deployment unit', 'Manual configuration', 'Single DevOps toolchain',
          'Insufficient monitoring', 'Manual per service handling of network failures', 'Weak source code and knowledge management', 'No CI/CD', 'No health check', 'Team coupling', 'Common ownership', 'Too many standards', 'Inadequate techniques support', 'Shared libraries',
          'Focus on latest technologies'

          ]
Maintainability = [5, 5, 1, 5, 0, 2, 1, 1, 5, 1, 5, 5, 5, 5, 1, 1, 5, 1, 0, 5, 0, 0, 5, 5, 1, 1, 5, 1, 0, 3, 2, 4,5, 2, 5, 5, 5, 3, 5, 2, 5, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 5, 5, 5, 5, 0, 0, 1, 1, 5, 5, 5, 5]
Security = [0, 6, 0, 0, 0, 0,0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0,6, 0, 0, 0, 0, 0, 0, 1, 1, 3, 2, 2, 3, 1, 1, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 6]
Flexibility= [0, 1, 0, 0, 0, 0,0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0,0,0, 1, 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1]
Reliability = [0,0,0,0,4, 0, 4, 4, 1, 0, 0, 1, 0, 4, 0, 0, 4, 0, 4, 4, 1, 4, 4, 0, 1, 1, 4, 0, 0, 0, 4,0, 0,1, 0, 2, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 1, 0, 4, 4, 0, 1, 1, 0, 0, 1, 0, 1, 1]
PerformanceEfficiency = [0,0,0,0,0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 3, 0, 3, 3, 0, 3, 0, 0, 1, 0, 0,0, 0,0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0]
InteractionCapability = [8, 0,0,0,0, 0, 0, 0, 0, 0, 1, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1]
Compatibility = [2, 0,0,0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
FunctionalSuitability = [0,0,0,0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0]


# 定义颜色
colors = [(0.345, 0.345, 0.345, 0.8),
          (0.737, 0.561, 0.561, 0.8),
          (0.561, 0.637, 0.561, 0.8),
          (0.561, 0.561, 0.737, 0.8),
          (0.4, 0.7, 0.2, 0.8),
          (0.85, 0.65, 0.65, 0.5),
          (0.65, 0.9, 0.65, 0.5),
          (0.25, 0.65, 0.8, 0.8)
          ]

# 计算每个条形的宽度
bar_width = 0.8

# 设置 x 轴刻度
x = np.arange(len(labels))

# 开始绘图
fig, ax = plt.subplots(figsize=(18, 12))

# 绘制第一个条形
ax.barh(x, Maintainability, height=bar_width, color=colors[0], label='Maintainability')

# 绘制第二个条形
ax.barh(x, Security, height=bar_width, left=Maintainability, color=colors[1], label='Security')

# 绘制第三个条形
ax.barh(x, Flexibility, height=bar_width, left=[a+b for a,b in zip(Maintainability,Security)], color=colors[2], label='Flexibility')

# 绘制第四个条形
ax.barh(x, Reliability, height=bar_width, left=[a+b+c for a,b,c in zip(Maintainability,Security,Flexibility)], color=colors[3], label='Reliability')

# 绘制第五个条形
ax.barh(x, PerformanceEfficiency, height=bar_width, left=[a+b+c+d for a,b,c,d in zip(Maintainability,Security,Flexibility,Reliability)], color=colors[4], label='PerformanceEfficiency')

# 绘制第6个条形
ax.barh(x, InteractionCapability, height=bar_width, left=[a+b+c+d+e for a,b,c,d,e in zip(Maintainability,Security,Flexibility,Reliability,PerformanceEfficiency)], color=colors[5], label='InteractionCapability')

# 绘制第7个条形
ax.barh(x, Compatibility, height=bar_width, left=[a+b+c+d+e+f for a,b,c,d,e,f in zip(Maintainability,Security,Flexibility,Reliability,PerformanceEfficiency,InteractionCapability)], color=colors[6], label='Compatibility')


# 绘制第8个条形
ax.barh(x, FunctionalSuitability, height=bar_width, left=[a+b+c+d+e+f+g for a,b,c,d,e,f,g in zip(Maintainability,Security,Flexibility,Reliability,PerformanceEfficiency,InteractionCapability,Compatibility)], color=colors[7], label='FunctionalSuitability')


# 设置 x 轴刻度和标签
ax.set_yticks(x)
ax.set_yticklabels(labels,fontsize=12)
ax.invert_yaxis()  # 将 y 轴刻度反转

# 添加图例
ax.legend()
#  The number of subcharacteristics of each characteristic affected by different  types of smells
# 添加标题和坐标轴标签
# ax.set_title('Horizontal Stacked Bar Chart')
ax.set_xlabel('Count')
ax.set_ylabel('Type')
plt.tight_layout()
plt.savefig('affect_characteristics.jpg', dpi=800)
# 显示图形
plt.show()