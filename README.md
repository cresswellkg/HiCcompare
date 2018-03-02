# Genome Research submission

Instructions for authors:
https://genome.cshlp.org/site/misc/ifora_mspreparation.xhtml

Paper length in the journal is between two and 12 journal pages. A manuscript of 28-32 typed, 
DOUBLE-SPACED pages with 27 lines of 11-point text per page (a manuscript of 50,000 characters) 
with four to six figures and one or two tables will translate to 12 printed pages in the journal.

Manuscript sections should be presented in the following order: 
TITLE PAGE, ABSTRACT (the abstract cannot exceed 250 words), INTRODUCTION, RESULTS, DISCUSSION, METHODS, DATA ACCESS

- `HiCcompare_manuscript.Rmd` - Dozmorov edits of `manuscript/3D_DNA-manuscript-Bioinformatics.Rmd`
- `Untitled.Rmd` - temporary file
- `Unused.Rmd` - unused text

## `figures` - Currently used figures

## `prostate_analysis` - tables for prostate analysis

## `styles.doc`

- `bioinformatics_styles_singlespace.docx` - corrected Bioinformatics template, 12 pt Times New font, single-spaced

## `supplementary`

- `01_Methods.Rmd` - Supplementary Methods
- `02_Distance.Rmd` - Supplementary Figures
- `03_Biases.Rmd` - MD plots of individually vs. loess normalized datasets, effect of biases on differential expression detection, `HiCcompare` vs. `ChromoR`, different resolutions
- `04_Differential.Rmd` - Differential analysis benchmarking using real data
- `05_diffHiC.Rmd` - comparison with `diffHiC`
- `merge_supplementary.sh` - command to merge individually generated files