% surrounding a block of code with tic and toc
% will time its execution


% non-vectorized code
tic
i = 0;
for t = 0:.00001:10
    i = i + 1;
    y(i) = sin(t);
end
toc

% vectorized code
tic
t = 0:.00001:10;
y = sin(t);
toc