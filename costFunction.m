# in order to use advanced optimzation alorigthm we need to give those algo two parameters: one is J and another is gradiant  
function [J, grad] = costFunction(theta, X, y) # theta = (n+1) x 1 matrix
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
#inside this fuction we have to use sigmoid function

J = 0;
grad = zeros(size(theta)); #n x 1 matrix where n= #of features
H_theta_X = sigmoid(X*theta); # m x 1 matrix where m = # of training set
cost_of_H_theta_X_comma_Y = - (y .* log(H_theta_X) + (1-y) .* log(1- H_theta_X)); 
# here cost_of_H_theta_X_comma_Y  is cost(H_theta(X), Y) where H_theta_X is m x 1 and Y is m x 1 matrix
#cost_of_H_theta_X_comma_Y  is m x 1 matrix
J= sum(cost_of_H_theta_X_comma_Y)/m; 

# finding gradient called delta
delta= zeros(length(theta),1); % (n+1)x 1 matrix
    for i= 1: length(theta),
      delta(i) = (H_theta_X - y)' * X(:,i);
      
    endfor
grad= delta/m; # as m is found when we take partial derivatives
# grad is theta that will be changed in each iteration






% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%






% =============================================================

end
