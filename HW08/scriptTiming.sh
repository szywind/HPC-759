#!/bin/bash
#SBA#!/bin/bash
#SBATCH -p slurm_me759
#SBATCH --job-name=hw08
#SBATCH -N 1 -n 1 --gres=gpu:1
#SBATCH -o hw08.o%j
cd $SLURM_SUBMIT_DIR
export CUDA_PROFILE=1
export COMPUTE_PROFILE=1
export CUDA_PROFILE_CSV=1 
echo "CUDA_PROFILE set to: " $CUDA_PROFILE
./scan
