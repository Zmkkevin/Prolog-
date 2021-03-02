# Prolog学习-
逻辑语言prolog
---
这学期选课人工智能ex一改往常授课经验，professor选择用prolog程序对这学期所有代码进行实现，实话讲过去真的很少听过这门语言也很少接触，正好趁着机会一睹prolog的风采。

Prolog的用途：

这门语言自我感觉在国内很少见，遇到一些问题时候很难百度到解决方法。百度了才知道Prolog主要用在人工智能和计算机语言的研究领域。Prolog和LISP是两个主要的研究人工智能算法的工具，一个有趣的现象是：在美国，研究者们喜欢用LISP，在欧洲，研究者们更倾向与使用Prolog进行开发。其次，提供了一种简单的方式来表达解释性的程序。Prolog是一种基于规则匹配的语言，这种方式对于程序员是透明的。它力图通过其内部的规则匹配引擎来满足各个布尔型函数的需求。你可以简单的把它想象成一个不确定的状态机，在你需要它的时候能做出正确的事情，不需要编程活动的介入。当然，这种机制在没有其它条件帮助的情况在并不能解决所有的问题，但它是很必要的，它能把开发人员从思考事情如何做成中解脱出来，转而集中关注有哪些已经被完成。可能教授想让我们更直观理解逻辑思考过程？

日常练习
---
* tut 1练习:

//first prolog program

```prolog
Given the following Prolog clauses:
female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

mother(Parent, Child) :- parent(Parent, Child), female(Parent).
father(Parent, Child) :- parent(Parent, Child), male(Parent).

grandparent(X, Z) :- parent(X, Y), parent(Y, Z).

sister(Sister, Sibling) :-
    parent(P, Sister),
    parent(P, Sibling),
    female(Sister),
    Sister \= Sibling.
```
1.Define the ancestor relation such that ancestor(X, Y) is true if X is an ancestor of Y. What is the expected output of the query:
ancestor(pam, X).


