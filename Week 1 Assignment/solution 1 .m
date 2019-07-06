### 1

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

### 2
clear all;
clc;
n = 1000;
mu = 8;
sigma = 5;
% a. Generate a vector of 1000 normal random numbers with mean 8 and
variance 25.
x = sigma*randn(n,1)+mu;
% b. Calculate how many elements in the vector are greater than or equal
to 9.
num = sum(x>=9)
% c. What is the sample mean and standard deviation for this sample of
1000 numbers?
sample_mean = mean(x)
sample_std = std(x)
% d. What are the 25th and 75th percentiles of the normal distribution
with mean 8 and variance 25?
q1 = norminv(.25,8,5) % or q1 = 5*norminv(0.25)+8
q3 = norminv(.75,8,5) % or q1 = 5*norminv(0.75)+8
% e. What are the 25th and 75th percentiles of the sample of the 1000
normal random numbers generated in part (a)?
s_q1 = quantile(x,0.25)
s_q3 = quantile(x,0.75)
% f. Find ?(0.789) and ?(-0.543).
normcdf(0.789)
normcdf(-0.543)
num =
428
sample_mean = 
 8.0511
sample_std =
4.9974
q1 =
4.6276
q3 =
11.3724
s_q1 =
4.7150
s_q3 =
11.2380
ans =
0.7849
ans =
0.2936 


### 3

clear all;
clc;
close all;
n = 1000;
lambda = 2;
% a. Generate a vector of 1000 Poisson random numbers with ? = 2.
x = poissrnd(lambda,n,1);
% b. Make a histogram and a boxplot of the 1000 numbers from part (a).
figure;
hist(x);
figure;
boxplot(x)


### 4

clear all;
close all;
clc;

snowfall = [45 59 82 80 71 60 55 69 79 95];
unemployment = [4.9 5.6 8.5 7.7 7.1 6.1 5.8 7.1 7.6 9.7];

% Scatterplot
plot(snowfall, unemployment, 'x');
grid;
xlabel('Snowfall (inches)');
ylabel('Unemployment (%)');

% Calculates the correlation coefficient

rho = corr(snowfall',unemployment');
   
   