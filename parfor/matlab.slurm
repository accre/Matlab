#!/bin/bash

#SBATCH --mail-user=<vunetid>@vanderbilt.edu
#SBATCH --mail-type=ALL
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --time=00:10:00        # 10 minutes
#SBATCH --mem=1G

setpkgs -a matlab_r2016a

matlab -nodisplay -nosplash -nojvm < parfor_eg.m
