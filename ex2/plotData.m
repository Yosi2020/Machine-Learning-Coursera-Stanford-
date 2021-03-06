function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
po = find(y==1);
ne = find(y==0);

plot(X(po,1),X(po,2), "K+",'markeredgecolor', 'black', 'LineWidth', 2.5, 'MarkerSize', 10);
plot(X(ne,1),X(ne,2), "Ko", "markeredgecolor","black", "markerfacecolor","red",'MarkerSize', 10);



hold off;

% =========================================================================



hold off;

end
