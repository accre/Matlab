#!/bin/bash
#SBATCH --mail-user=<myemail@vanderbilt.edu>
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=00:10:00        # 10 minutes
#SBATCH --mem=40G
#SBATCH --output=matlab_job_slurm.out

module load MATLAB   # load the default version of Matlab from LMod

matlab -nodisplay -nosplash < sort.m