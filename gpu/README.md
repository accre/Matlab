## gpu
Demonstrates basic gpu functions in Matlab. 

# SLURM file
Replace `<mygroup>` with your group name (appended with `_gpu`).

# tests.m
Contains functions to test the CPU v. GPU speed of 
1. an element-wise operation on a 1-d array
2. solution of a linear system (i.e. Ax = b), without considering time to copy arrays to and from the CPU / GPU
3. solution of a linear system including copy time (HINT: try to minimize the number of copies between CPU and GPUs)
