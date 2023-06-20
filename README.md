# GTEx-v8-deconvolution


## Steps to run the pipeline

- clone rep
- install snakemake
- optional set up snakemake profile (when running on cluster)
- mkdir CATD/Input/Pseudobulk
- place sc reference in Input (skin_seurat.rds)
- place RNA bulk in Input/Pseudobulk (skin_pbulk.rds)
- put sample you wnat to deconvolve in congig.yaml (skin)
- run pipeline with bash runPip.sh 