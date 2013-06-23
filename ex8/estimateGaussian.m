function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma2 = zeros(n, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

% sum each column of X, return a row vector
mu = sum(X)/m;
% mu is a column vector, take the transpose
mu = mu';

y = zeros(n,m);
% calculate a matrixy, that stores (x - mu)
for j = 1:m
    y(:,j) = X(j,:)' -  mu;
end

% sum squre and take the average to get the variance
y = y.^2/m;
% sum each row of y and return a row vector
sigma2 = sum(y,2);
% sigma2 needs to be a column vector
sigma2 = sigma2(:);





% =============================================================


end
