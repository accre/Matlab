n = 50000;
A = rand(n);

% perform a sort on a nxn matrix
tic % surrounding code with tic and toc meaure execution time
Asort = sort(A,2);
toc