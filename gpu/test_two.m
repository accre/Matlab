function [] = test_two()

fprintf('testing mldivide without copies\n');

n = 2 ^ 13;

% host arrays
A = rand(n, n); b = rand(n, 1);

% CPU code using Matlab's optimized mldivide
tic
x = A\b;
time_cpu = toc; fprintf('time_cpu %f\n', time_cpu);

% GPU code for mldivide that accepts objects
% device arrays
A_dev = gpuArray(A); b_dev = gpuArray(b); 
f = @() mldivide(A_dev, b_dev);
time_gpu = gputimeit(f);
fprintf('time_gpu %f\n', time_gpu); 
