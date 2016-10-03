function [] = test_one()

n = 2^26;

fprintf('testing sine function\n');

% CPU code
H = rand(n, 1); % host array
tic
y0 = sin(H);
sum_y0 = sum(y0);
fprintf('%f\n', sum(y0));
time_cpu = toc; fprintf('time_cpu %f\n', time_cpu)

% GPU code
gd = gpuDevice();
H_dev = rand([n, 1],'gpuArray'); % device (gpu) array
tic();
sum_y1 = sum(sin(H_dev));
wait(gd);
time_gpu = toc(); fprintf('time_gpu %f\n', time_gpu)
