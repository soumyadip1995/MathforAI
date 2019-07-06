### 1

clear all;
clc;
close all;

num_samples = 1000;
lambda = 6;
mu = 1/lambda;
sigma = mu;

% Part a

% Generate 1000 random numbers from the exponential distribution with
% lambda=6

x = exprnd(mu,num_samples,1);

% Plot a histogram
hist(x,20);
title('Histogram of 1000 exponential random variables with lambda = 6');

% Part b,c,d,e
sample_sizes = [2 10 20 100];
figure;
for i = 1:length(sample_sizes)
sample_size = sample_sizes(i);
x = exprnd(mu,num_samples,sample_size);
sample_mean = mean(x');
z_score = (sample_mean - mu)/(sigma/sqrt(num_samples));
  Plot a histogram z-scores
subplot(2,2,i);
hist(z_score);
title(['Sample size n = ', num2str(sample_size)])
## Plot a normal plot of z-scores
subplot(2,2,i);
normplot(z_score);
title(['Sample size n = ', num2str(sample_size)])
end 


### 2

clear all;
clc;
close all;

% Parameters

level = 0.05;
mu_0 = 0;
mu = 1;
sigma = 1;
n = 9;
num_samples = 100;
% Reject if sample mean is greater than critical_value
critical_value = mu_0+norminv(1-level)*sigma/sqrt(n);

% Generate 100 samples of size n with mean mu_0
x = sigma*randn(num_samples,n)+mu_0;
x_bar = mean(x');
a_risk = sum(x_bar>critical_value)/num_samples;

% Generate 100 samples of size n with mean mu
x = sigma*randn(num_samples,n)+mu;
x_bar = mean(x');
b_risk = sum(x_bar<critical_value)/num_samples;
>> a_risk
a_risk =
0.0500
>> b_risk
b_risk =
0.0700
### The results are close to their theoretical values. 


### 3

clear all;
clc;
close all;
sigma = 1000;
n = 10;
% We reject when x_bar is greater than the critical value
critical_value = 10500;
mu = 9600:200:11600;
power = 1-normcdf((critical_value-mu)*sqrt(n)/sigma);
oc = 1-power;
plot(mu,power);
grid;
title('Power');
figure;
plot(mu,oc);
grid;
title('OC');


### 4

clear all;
clc;
close all;

x = [202.2,203.4,200.5,202.5,206.3,198.0,203.7,200.8,201.3,199.0];
mu = 200;
alpha = 0.05;

[h p ci stats] = ttest(x,mu,alpha, 'right')

h =
p =
ci =
200.3729 Inf
0.0227
  
        
           
           