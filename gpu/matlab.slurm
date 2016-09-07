#!/bin/bash
#SBATCH --account=<mygroup>_gpu
#SBATCH --partition=maxwell
#SBATCH --gres=gpu:4
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:10:00        # 10 minutes
#SBATCH --mem=1G
#SBATCH --output=matlab_job_slurm.out

setpkgs -a matlab_r2016a
matlab -nodisplay -nosplash < gpu_eg.m
