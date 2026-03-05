nextflow.enable.dsl=2

process run_fastqc {

    publishDir "results/fastqc", mode: 'copy'

    input:
    path reads

    output:
    path "*_fastqc.*"

    script:
    """
    fastqc $reads
    """
}

process run_multiqc {

    publishDir "results/multiqc", mode: 'copy'

    input:
    path fastqc_results

    output:
    path "multiqc_report.html"

    script:
    """
    multiqc .
    """
}


workflow {

    reads = Channel.fromPath("data/*.fastq.gz")

    fastqc_results = run_fastqc(reads)

    run_multiqc(fastqc_results)
}