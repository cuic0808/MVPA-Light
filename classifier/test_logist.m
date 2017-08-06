function [label,dval] = test_logist(cf,X)
% Applies a logistic regression classifier.
% 
% Usage:
% [labels,dval] = test_logist(cf,X)
% 
%Parameters:
% cf             - struct describing the classifier obtained from training 
%                  data. Must contain at least the fields w and b, 
%                  see train_logist
% X              - [number of samples x number of features] matrix of
%                  test samples
%
%Output:
% label         - predicted class labels (1's and -1's)
% dval          - decision values, i.e. distances to the hyperplane

dval = X*cf.w - cf.b;
label= sign(dval);
