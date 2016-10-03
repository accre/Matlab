function[] = test_three()

fprintf('testing mldivide with copies\n');

n = 2 ^ 13;

% CPU code using Matlab's optimized mldivide
tic
A = rand(n);
b = rand(n, 1);
x = A\b;
time_cpu = toc;
fprintf('time_cpu %f\n', time_cpu);

% GPU code for mldivide that accepts objects
gd = gpuDevice();
tic();
A_dev = gpuArray(A);
b_dev = gpuArray(b); 
x_dev = sum(mldivide(A_dev, b_dev));
wait(gd);
time_gpu = toc();
fprintf('time_gpu %f\n', time_gpu);
