# Resource allocation
# Use this list if you want to change setting
# -c      number of CPU cores to request (OpenMP/pthreads, default: 1)
# -g      number of GPUs to request (default: none)
# -m      memory amount to request (default: 4GB)
# -p      partition to run the job in (default: dev)
# -t      time limit (default: 01:00:00)
sdev -c 4 -m 16GB -t 02:00:00

# Get the useful libraries
ml python/3.9.0
ml py-numpy/1.24.2_py39
ml py-pandas/2.0.1_py39
ml py-matplotlib/3.7.1_py39
ml py-seaborn/0.12.1_py39
ml py-scikit-learn/1.0.2_py39
ml py-scipy/1.10.1_py39
ml py-ipython/8.3.0_py39
ml py-jupyter/1.0.0_py39
ml py-pytorch/2.0.0_py39
ml py-optuna/2.10.0_py39

# pip things that are not module
pip install tqdm

# start jupyter
jupyter notebook --no-browser --port=8888
