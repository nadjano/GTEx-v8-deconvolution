#!/bin/bash

#BSUB -o "pipOut_%J.log"
#BSUB -J "runPip"

condaDir="/nfs/production/irene/ma/users/nnolte/conda/etc/profile.d/conda.sh"

source $condaDir
conda activate snakemake

snakemake \
  --profile lsf \
  --conda-frontend mamba \
  --rerun-incomplete
