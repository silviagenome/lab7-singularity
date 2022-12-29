#!/bin/bash
#
#SBATCH -p hpc-bio-lejeune
#SBATCH --chdir=/home/alumno15
#SBATCH -J lab7
#SBATCH --ntasks-per-node=4  # a maximum count of tasks per node
#SBATCH --cpus-per-task=4    # number of processors per task
##SBATCH --output=salida-std
##SBATCH --error=salida-err
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

module load singularity/3.8.0
gzip -dk blast/zebrafish.1.protein.faa.gz
singularity exec blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in blast/zebrafish.1.protein.faa -dbtype prot
singularity exec blast_2.9.0--pl526h3066fca_4.sif blastp -query blast/P04156.fasta -db blast/zebrafish.1.protein.faa -out results-blast.txt
singularity exec blast_2.9.0--pl526h3066fca_4.sif cp results-blast.txt blast/results-blast.txt 
