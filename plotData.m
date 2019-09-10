function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;
% Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y == 0); 
# get  row indices which have y==1 and which have y==0 
#and which give two column vector pos and neg 
% Plot Examples
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2,'MarkerSize', 7); #ploting data which has y ==1
% Put some labels 
hold on; # in order to write on same figure use hold on
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);  #ploting data which has y ==0
% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
% Labels and Legend











% =========================================================================



hold off;

end
