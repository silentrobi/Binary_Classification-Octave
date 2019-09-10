# Binary classification-Octave
This project is part of the **Machine Learning** course offered by **Andrew Ng**.

# Project documantation
The project has following classes and script files.
# costFunction.m -- *Script File*
**costFunction.m** file has `costFunction(theta, X,y)` method, that is used to find cost **J** and **gradiant** for binary logistic regression. The return values of this method are **J**   and **gradiant**. The method looks like in octave `function [J, grad] = costFunction(theta, X, y)`, where **X** is `m x (n+1)` matrix, **y** is `m x 1` matrix, **theta** is `(n+1) x 1` matrix.
# costFunctionReg.m -- *Script File*
**costFunctionReg.m** file has `costFunction(theta, X,y, lambda)` method, that is used to find cost **J** and **gradiant** for binary logistic regression. The return values of this method are **J**   and **gradiant**. The method looks like in octave `function [J, grad] = costFunctionReg(theta, X, y, lambda)`, where **X** is `m x (n+1)` matrix, **y** is `m x 1` matrix, **theta** is `(n+1) x 1` matrix, and lambda is regularized parameter. costFunctionReg() method prevent overfitting problem by adding some penalty.

