function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.
#z is m x 1 matrix

% You need to return the following variables correctly 
g = zeros(size(z)); # m x 1 matrix

%Vectorize representation
takeExp = exp(-z); # m X1 matrix
g= 1 ./(1+ takeExp); # ./ does colum wise division   

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).





% =============================================================

end
