#!/bin/bash
#SBATCH --mail-user=<myemail@vanderbilt.edu>
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --time=00:10:00        # 10 minutes
#SBATCH --mem=4G

module load MATLAB   # load the default version of MATLAB from LMod

matlab -nodisplay -nosplash < parfor_eg.m
