#!/bin/bash
#SBATCH --mail-user=vunetid@vanderbilt.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=00:10:00        # 10 minutes
#SBATCH --mem=40G
#SBATCH --output=matlab_job_slurm.out

setpkgs -a matlab
matlab -nodisplay -nosplash < sort.m