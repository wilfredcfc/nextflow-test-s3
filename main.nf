#!/usr/bin/env nextflow

params.str = 'World!'
params.outDir = 's3://test-nextflow-data/demo'


process sayHello {
    publishDir = "${params.outDir}"

    output:
      file 'output.txt'
    script:
      """
      printf 'Hello ${params.str}' > output.txt
      """
}

