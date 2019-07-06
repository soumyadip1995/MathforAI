clear all;
clc;
n = 100;
% Generate 100 uniform random numbers between 0 and 2
x = 2*rand(n,1);
% Calculate the mean
mu = mean(x);
% Calculate the median
med = median(x);
% Find the percentage of points greater than 1
per = sum(x>1)/n;
mu =
1.0089
med =
0.9841
per =
0.4900 






   
   