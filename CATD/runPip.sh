#!/bin/bash

#BSUB -o "pipOut_%J.log"
#BSUB -J "runPip"

condaDir="/.../conda/etc/profile.d/conda.sh" # please enter asolute path to conda profile

source $condaDir
conda activate snakemake

snakemake \
  --profile lsf \
  --conda-frontend mamba \
  --rerun-incomplete
