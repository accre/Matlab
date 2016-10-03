function [] = tests()

    test_one(2^23);
    test_two(2^11);
    test_three(2^11);
    
    
    
    function [] = test_one(n)

    fprintf('testing sine function\n');
    % host array
    H = ones(n,1);

    % device (gpu) array
    D = gpuArray(H);

    % CPU code
    tic
    y = sin(H);
    time_cpu = toc;
    fprintf('time_cpu %f\n',time_cpu)

    % GPU code
    tic
    y = sin(D);
    time_gpu = toc;
    fprintf('time_gpu %f\n',time_gpu)

    end

    function [] = test_two(n)

    fprintf('testing mldivide without copies\n');
    % host arrays
    A = rand(n);
    b = rand(n,1);

    % device arrays
    A_dev = gpuArray(A);
    b_dev = gpuArray(b); 

    % CPU code using Matlab's optimized mldivide
    tic
    x = A\b;
    time_cpu = toc;
    fprintf('time_cpu %f\n',time_cpu)

    % GPU code for mldivide that accepts objects
    tic
    x_dev = mldivide(A,b);
    time_gpu = toc;
    fprintf('time_gpu %f\n',time_gpu)

    end
    
    function [] = test_three(n)

    fprintf('testing mldivide with copies\n');

    % device arrays

    % CPU code using Matlab's optimized mldivide
    tic
    A = rand(n);
    b = rand(n,1);
    x = A\b;
    time_cpu = toc;
    fprintf('time_cpu %f\n',time_cpu)

    % GPU code for mldivide that accepts objects
    tic
    A_dev = gpuArray(A);
    b_dev = gpuArray(b); 
    x_dev = mldivide(A,b);
    x_host = gather(x_dev);
    time_gpu = toc;
    fprintf('time_gpu %f\n',time_gpu)

    end
end

