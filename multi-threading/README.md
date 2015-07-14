# Multi-threaded Built-In Functions in Matlab

sort is a built-in Matlab function that
is multi-threaded and can therefore run
across multiple cores if available.

In SLURM, you can add more cores for your job
to use by requesting a corresponding number of tasks.
Requesting more tasks in your SLURM script
will result in this function running faster. For this
example we see the following execution times:

Num. Cores  | Execution Time (secs)
------------- | -------------
1  | 324
8  | 55

but the tasks have to all be on the same node,
so you should use the options:

```shell
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
```

We have a max of 12 cores on our nodes so you
cannot request more than 12 tasks/node 

For more information on multi-threaded built-in functions
in Matlab, see:

http://www.mathworks.com/discovery/matlab-multicore.html

## Known Issues

You can safely ignore the following message:

Warning: Function sort has the same name as a MATLAB builtin. We suggest you
rename the function to avoid a potential name conflict.

This is a quirk with how the Matlab environment is set up on our
cluster but this should not impact the performance (or results)
of your code.