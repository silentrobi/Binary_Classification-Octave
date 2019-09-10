function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
#inside this fuction we have to use sigmoid function

J = 0;
grad = zeros(size(theta)); #n x 1 matrix where n= #of features
H_theta_X = sigmoid(X*theta); # m x 1 matrix where m = # of training set

# Regularization term
reg = zeros(size(theta)-1); # excluding bais theta_0
theta_biased_removed = theta;
theta_biased_removed(1,:) = []; #removing theta_0 bised term
reg= (lambda / (2*m))*sum((theta_biased_removed .^2)); 

cost_of_H_theta_X_comma_Y = - (y .* log(H_theta_X) + (1-y) .* log(1- H_theta_X)); 
# here cost_of_H_theta_X_comma_Y  is cost(H_theta(X), Y) where H_theta_X is m x 1 and Y is m x 1 matrix
#cost_of_H_theta_X_comma_Y  is m x 1 matrix
J= sum(cost_of_H_theta_X_comma_Y)/m + reg; 

# finding gradient called delta
delta= zeros(length(theta),1); % (n+1)x 1 matrix
    for i= 1: length(theta),
      if i==1,
        delta(i) = (H_theta_X - y)' * X(:,i);
      else
        delta(i) = (H_theta_X - y)' * X(:,i) + lambda * theta(i); # delta (n X 1); delta/m
      endif
        
    endfor
grad= delta/m; # as m is found when we take partial derivatives

end
