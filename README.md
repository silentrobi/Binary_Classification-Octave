# Binary classification-Octave
This project is part of the **Machine Learning** course offered by **Andrew Ng**.

# Project documantation
The project has following classes and script files.
# costFunction.m -- *Script File*
**costFunction.m** file has `costFunction(theta, X,y)` method, that is used to find cost **J** and **gradiant** for binary logistic regression. The return values of this method are **J**   and **gradiant** `(n+1) x1`. The method looks like in octave `function [J, grad] = costFunction(theta, X, y)`, where **X** is `m x (n+1)` matrix, **y** is `m x 1` matrix , and **theta** is `(n+1) x 1` matrix.
# costFunctionReg.m -- *Script File*
**costFunctionReg.m** file has `costFunction(theta, X,y, lambda)` method, that is used to find cost **J** and **gradiant** for binary logistic regression. The return values of this method are **J**   and **gradiant** `(n+1) x1`. The method looks like in octave `function [J, grad] = costFunctionReg(theta, X, y, lambda)`, where **X** is `m x (n+1)` matrix, **y** is `m x 1` matrix, **theta** is `(n+1) x 1` matrix, and **lambda** is regularized parameter. costFunctionReg() method prevent **overfitting** problem by adding some penalty (Regularize term).
# plotData.m -- *Script File*
**plotData.m** file is used to plot training data. As **X** has two features, it can be represented in 2D graph. It has the method `function plotData(X, y)`, where **X** is `m x n` matrix and **y** is `m x 1` matrix.

# sigmoid.m -- *Script File*
**sigmoid.m** file has `sigmoid()` method, that is used to compute sigmoid of input vector/matrix.

# plotDecisionBoundary.m -- *Script File*
**plotDecisionBoundary.m** file is used to plot decision boundary. As **X** has two features, it can be represented in 2D graph. It has the method `function plotDecisionBoundary(theta, X, y)`, where **X** is `m x (n+1)` matrix and **y** is `m x 1` matrix, and **theta** is `(n+1) x 1` matrix. The decision boundary is linear for `ex2data1.txt`, whereas the decision boundary for `ex2data2.txt` is non-linear. **Note:** The decision boundary is non-linear because the hypothesis is polynomial. Polynomial features are added by **mapFeature(X1, X2)** method.
# mapFeature.m -- *Script File*
The file has `mapFeature(X1, X2)` method. This method maps the two input features to quadratic features used in the regularization exercise. Returns a new feature array with more features, comprising of  `X1, X2, X1.^2, X2.^2, X1*X2, X1*X2.^2, etc..` up to degree 6. Inputs X1, X2 must be the same size. This method is used in **ex2_reg.m** file. 
# predict.m -- *Script File*
**predict.m** file is used to get predicted **y_hat** values. The file has `predict(theta, X)` method, that is used to find all ***y_hat** for binary logistic regression. The return values of this method are **p** `(m x 1)` which is **y_hat** . The method looks like in octave `function p = predict(theta, X)`, where **X** is `m x (n+1)` matrix and **theta** is `(n+1) x 1` matrix.
# ex2.m -- *Script File*
This is the file runs  binary logistic regression classifier (simple version).This file loads `ex2data1.txt`, gets binary logistic regression model. 
# ex2_reg.m -- *Script File*
This is the file that should be run for binary logistic regression classifier.This file loads `ex2data2.txt`, gets binary logistic regression model. It uses **mapFeature()**, **costFunctionReg()** methods. This implementation prevents overfitting problem.
# ex2.pdf 
The PDF file has the detail description of the homework.


