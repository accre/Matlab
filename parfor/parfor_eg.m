
N = 2^25
tic
for i = 1:N
    A(i, 1) = sin(i*2*pi/N);
end
toc

tic
parfor i = 1:N
    B(i, 1) = sin(i*2*pi/N);
end
toc
