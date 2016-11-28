function [] = test_one()

n = 2^26;

fprintf('testing sine function\n');

% CPU code
H = rand(n, 1); % host array
tic();
y0 = sin(H);
time_cpu = toc(); 
fprintf('time_cpu %f\n', time_cpu)

% GPU code
H_dev = gpuArray(H); % device (gpu) array
f = @() sin(H_dev);
time_gpu = gputimeit(f); 
fprintf('time_gpu %f\n', time_gpu)
