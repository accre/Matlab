#!/bin/bash
#SBATCH --mail-user=vunetid@vanderbilt.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:10:00        # 10 minutes
#SBATCH --mem=500M
#SBATCH --output=matlab_job_slurm.out

setpkgs -a matlab_r2015a
matlab -nojvm < vectorization.m
