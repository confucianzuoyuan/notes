#import "@preview/wonderous-book:0.1.2": book

#show: book.with(
  title: [流形导论（第二版）],
  author: "Janet Doe",
  dedication: [for Rachel],
  publishing-info: [
    UK Publishing, Inc. \
    6 Abbey Road \
    Vaughnham, 1PX 8A3

    #link("https://example.co.uk/")

    971-1-XXXXXX-XX-X
  ],
)

= 简介

本科微积分的课程进程通常是从实数轴上函数的微分和积分开始，逐步发展到平面及三维空间中的函数。随后，学生会接触到向量值函数，并学习曲线积分与曲面积分。实分析（Real Analysis）则进一步将微积分从 $RR^3$（三维空间）推广到了 $RR^n$（$n$ 维空间）。而本书的主题，正是关于微积分从曲线和曲面像更高维度的推广。

光滑曲线和曲面在更高维度上的类比被称为流形（Manifolds）。在流形这一更一般的框架下，向量微积分的构造与定理反而变得更加简洁：梯度（gradient）、旋度（curl）和散度（divergence）统统只是外微分（exterior derivative）的特例；而线积分基本定理、格林定理（Green's theorem）、斯托克斯定理（Stokes's theorem）以及散度定理（divergence theorem），也仅仅是流形上单一且通用的广义斯托克斯定理的不同表现形式。

即便我们只关心人类居住的这个三维空间，高维流形依然会自然出现。例如，如果我们把"先旋转后平移"的操作称为仿射运动（affine motion），那么 $RR^3$ 中所有仿射运动的集合就构成了一个六维流形。并且，值得注意的是，这个六维流形并不是 $RR^6$。

如果两个流形之间存在一个同胚（homeomorphism），即一个双向皆连续的双射（bijection），我们就认为这两个流形在拓扑上是相同的。流形的*拓扑不变量（topological invariant）*是指在同胚变换下保持不变的性质，例如紧致性（compactness）。另一个例子是流形的连通分量（connected components）的数量。

有趣的是，我们可以利用流形上的微分和积分微积分来研究流形的拓扑结构。由此，我们获得了一种更精细的不变量，称为流形的德拉姆上同调（de Rham cohomology）。

我们的计划如下：首先，我们以一种适合推广到流形的方式，重构 $RR^n$ 上的微积分。为了做到这一点，我们将赋予符号 $upright(d)x$、$upright(d)y$ 和 $upright(d)z$ 具体的含义，使它们作为*微分形式（differential forms）*拥有独立的生命，而不再仅仅是本科微积分中那样的记号。

虽然在讲解流形理论之前先发展 $RR^n$ 上的微分形式理论在逻辑上并非绝对必要——毕竟第 5 章中流形上的微分形式理论已经涵盖了 $RR^n$ 上的情形——但从教学角度来看，首先单独处理 $RR^n$ 是有益的。因为正是在 $RR^n$ 上，微分形式和外微分（exterior differentiation）本质上的简洁性才最为显而易见。

我们不立即深入探讨流形的另一个原因在于课程安排：这样可以让没有点集拓扑（point-set topology）背景的学生，在学习 $RR^n$ 上的微分形式微积分的同时，自学附录 A。

在具备了点集拓扑的基础知识后，我们将定义流形，并推导出一个集合成为流形的各种条件。微积分的一个核心思想是用线性对象来逼近非线性对象。基于这一思想，我们将考察流形与其切空间（tangent spaces）之间的关系。其中的关键例子便是李群（Lie groups）及其李代数（Lie algebras）。

最后，我们将进行流形上的微积分运算，利用分析学与拓扑学之间的交互作用，一方面展示向量微积分的定理是如何推广的；另一方面展示流形上的运算结果如何定义流形的一种新的光滑（$C^infinity$）不变量——即德拉姆上同调群（de Rham cohomology groups）。

事实上，德拉姆上同调群不仅是光滑不变量，也是拓扑不变量。这是著名的*德拉姆定理（de Rham theorem）*的推论，该定理建立了德拉姆上同调与实系数奇异上同调（singular cohomology）之间的同构关系。证明这个定理将使我们偏离主题太远，感兴趣的读者可以在本书的续作 [4] 中找到相关证明。

= Mondays
Liam hated Mondays. He hated waking up to the sound of his dad's old car sputtering to life outside his window. He hated the smell of burnt toast and instant coffee that filled the kitchen. He hated the sight of his mum's tired face as she handed him his lunch bag and kissed him goodbye. He hated the feel of his worn-out uniform and backpack as he walked to the bus stop. He hated the noise of the other kids on the bus, talking about their weekend plans and their latest crushes. He hated the fact that he had nothing to say to them, nothing to share, nothing to look forward to.

He got off the bus at his school and made his way to his locker, avoiding eye contact with anyone who might notice him or worse, pick on him. He was used to being invisible, being ignored, being alone. He didn't have any friends at school, or anywhere else for that matter. He didn't have any hobbies or interests that made him stand out or fit in. He didn't have any dreams or goals that gave him hope or motivation. He just had his routine: wake up, go to school, come home, do homework, watch TV, go to bed. Repeat.

He opened his locker and took out his books for his first class: English literature. He liked reading books sometimes, but he didn't like analyzing them or writing essays about them. He didn't see the point of studying something that had no relevance to his life or future. What did Shakespeare or Dickens have to do with him? What did he care about metaphors or themes or symbols? He just wanted to escape into a different world for a while, not dissect it.

He closed his locker and headed to class. As he walked down the hall, he saw her: Alice Walker. She was new at school this year and she was beautiful. She had long blonde hair that cascaded over her shoulders like a waterfall. She had bright blue eyes that sparkled like diamonds in the sunlight. She had a perfect smile that lit up her face like a star in the night sky.

But he knew it was impossible. She was out of his league. She was from another world. He sighed and continued walking towards English literature. He hated Mondays.

= Music
#lorem(1500)

= Magic
#lorem(600)
