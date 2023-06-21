# GTEx-v8-deconvolution

This repository provides a simplified version of [Anna Vathrakokoili Pournara's](https://github.com/annavpo) deconvolution benchmarking pipeline, called CATd ([Functional-Genomics/CATD_snakemake](https://github.com/Functional-Genomics/CATD_snakemake/tree/main)).

The pipeline allows you to perform deconvolution of bulk RNA samples (TMPs/FPKMs) using three deconvolution tools: FARDEEP, DWLS, and EpiDISH. The output of the pipeline is the average of the cell type proportions predicted by these three tools.

## Steps to Run the Pipeline

1. Clone the repository.
2. Install Snakemake (version 7.14.0).
3. (Optional) If on cluster set up cluster profile if you haven't, instructions available [here](https://github.com/Snakemake-Profiles/lsf).
4. Create the necessary directories:
   - `mkdir -p CATD/Input/Pseudobulk`
5. Place the single-cell reference file (`skin_seurat.rds`) in the `CATD/Input` directory.
6. Place the RNA bulk file (`skin_pbulk.rds`) in the `CATD/Input/Pseudobulk` directory.
7. Edit the `config.yaml` file to specify the sample you want to deconvolve (e.g., `- skin`).
8. Run the pipeline using the command: `bash runPip.sh`.
9. View the results in the `CATD/Consensus` and `CATD/ConsensusPlot` directories.

## Input files
- **Input bulk (`CATD/Input/Pseudobulks/skin_pbulk.rds`):**
  - The input bulk file should be a `.rds` file with Ensemble Gene IDs as row names and sample IDs as column names.
  - The RNA-seq bulk file should only contain samples from a single tissue. If your dataset contains multiple tissues, you need to split the counts by tissue.

- **Input single-cell reference (`CATD/Input/skin_seurat.rds`):**
  - The input single-cell reference file should be a `.rds` file.

## More details
For more details on parameters and instructions:
- [Functional-Genomics/CATD_snakemake](https://github.com/Functional-Genomics/CATD_snakemake/tree/main)
- Vathrakokoili Pournara, A., Miao, Z., Beker, O. Y., Brazma, A. & Papatheodorou, I. Power analysis of cell-type deconvolution methods across tissues. http://biorxiv.org/lookup/doi/10.1101/2023.01.19.523443 (2023) doi:10.1101/2023.01.19.523443.
