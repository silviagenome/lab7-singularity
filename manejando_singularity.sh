#!/bin/bash
module load singularity/3.8.0
echo El hostname de ibsen es:
hostname
echo
echo El hostname de singularity es:
singularity exec $HOME/my-python.sif hostname
echo
echo El comando cat /etc/os-release de ibsen es:
cat /etc/os-release 
echo
echo El comando cat /etc/os-release de singularity es:
singularity exec $HOME/my-python.sif cat /etc/os-release
echo
echo El comando pwd de ibsen es:
pwd $HOME
echo
echo El comando pwd de singularity es:
echo
singularity exec $HOME/my-python.sif pwd
echo
echo El comando ls -l /home de ibsen es:
ls -l /home
echo
echo El comando ls -l /home de singularity es:
singularity exec $HOME/my-python.sif ls -l /home
echo
echo El comando python –version de ibsen es:
python --version
echo
echo El comando python –version de singularity es:
singularity exec $HOME/my-python.sif python --version
echo
echo El notebook dentro de la carpeta:
ipython source/kmer-solution.ipynb
echo
echo El notebook dentro de singularity
singularity exec $HOME/my-python.sif ipython source/kmer-solution.ipynb
