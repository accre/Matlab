#!/bin/bash
#SBATCH --mail-user=<myemail@vanderbilt.edu>
#SBATCH --account=<mygroup>_gpu
#SBATCH --partition=maxwell
#SBATCH --gres=gpu:4
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:10:00        # 10 minutes
#SBATCH --mem=10G

module load MATLAB   # Load the default version of Matlab from LMod

matlab -nodisplay -nosplash -nojvm < gpu_eg.m
