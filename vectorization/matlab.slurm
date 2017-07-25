#!/bin/bash
#SBATCH --mail-user=<myemail@vanderbilt.edu>
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:10:00        # 10 minutes
#SBATCH --mem=500M
#SBATCH --output=matlab_job_slurm.out

module load MATLAB   # Load the default version of Matlab from LMod

matlab -nodisplay -nosplash < vectorization.m
