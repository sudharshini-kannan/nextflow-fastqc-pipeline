# Nextflow FastQC Pipeline

A simple **Nextflow pipeline** for performing **quality control of NGS reads** using FastQC and MultiQC.

This project demonstrates how to build a reproducible bioinformatics workflow using **Nextflow**, **FastQC**, and **MultiQC**.

---

## Project Overview

Nextflow is a workflow manager used in bioinformatics to create scalable and reproducible pipelines.

In this pipeline:

1. Input FASTQ file is processed with **FastQC**
2. FastQC reports are collected
3. **MultiQC** generates a combined quality report

---

## Tools Used

- Nextflow
- FastQC
- MultiQC
- Conda / Mamba
- Ubuntu Linux
- VS Code
- Git & GitHub

---

## Project Structure


nextflow_fastqc/
│
├── main.nf
├── SRR390728_1.fastq.gz
├── results/
│ └── fastqc/
├── work/
└── README.md


---

## Installation

Install required tools using Conda/Mamba:


mamba create -n qc_env -c conda-forge -c bioconda fastqc multiqc nextflow
conda activate qc_env


---

## Running the Pipeline

Run the pipeline using:


nextflow run main.nf


Nextflow will execute the following steps:

1. Run **FastQC** on the input FASTQ file
2. Store results in the **results folder**
3. Generate a **MultiQC summary report**

---

## Output

The pipeline generates:

- FastQC HTML reports
- MultiQC summary report

Example output:


results/fastqc/*.html
multiqc_report.html


---

## Learning Goals

This project demonstrates:

- Workflow automation using **Nextflow**
- NGS quality control analysis
- Reproducible bioinformatics pipelines
- Basic GitHub project organization

---

## Author

Sudharshini Kannan  
Bioinformatics learner | Biotechnology background
