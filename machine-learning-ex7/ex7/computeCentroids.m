function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%




for i = 1:K  
  all_k = 0;  
  count = sum(idx(:) == i);   %分配到centroids(i)中的X的元素总数  
  temp_meet = find(idx==i);   %找出分配到centroids(i)中的所有X的行索引 (1*p)  
  for j = 1:numel(temp_meet)  
    all_k = all_k + X(temp_meet(j), :);  %(1*n)  
  end  
  centroids(i, :) = all_k / count;  
end  



% =============================================================


end

