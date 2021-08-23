# install dependencies
#Should match Config.py
echo Initialising...

#Create directories to store persistent data
mkdir -p /workspace/conda
mkdir -p /workspace/data

#Create a new env called py38_jupyter
conda create --prefix /workspace/conda/py38_jupyter python=3.8 &&
echo "conda activate /workspace/conda/py38_jupyter" >> ~/.bashrc &&
export PATH=/workspace/conda/py38_jupyter/bin:$PATH &&
source ~/.bashrc
export SHELL=/bin/bash

#Install conda packages for to run jupyter notebook
conda install --name base notebook -y
conda install --name -y -c conda-forge ipykernel

# Some extra packages for your environments
# conda install -y -c conda-forge tensorflow
# conda install -y -c conda-forge keras
# conda install -y -c conda-forge xtl
# conda install -y -c conda-forge openblas
# conda install -y -c conda-forge gdal
# conda install -y -c conda-forge util-linux
# conda install -y -c conda-forge libtiff
# conda install -y -c conda-forge libgdal
# conda install -y -c pytorch pytorch
# conda install -y -c conda-forge dask
# conda install -y -c conda-forge dash
# conda install -y -c conda-forge dash-table
# conda install -y -c conda-forge rx
# conda install -y -c conda-forge dash-core-components


pip install duckdb

python -m ipykernel install --user --name=base

echo Done...