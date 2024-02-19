# Run Jupyter on Sherlock

## Log onto Sherlock

`ssh chc012@login.sherlock.stanford.edu`

## Go to our directory

`cd $OAK/projects/multiomics/`

## Resource Allocation

`sdev -p mrivas -c 4 -m 16GB -t 02:00:00`

```
# Use this list if you want to change setting
# -c      number of CPU cores to request (OpenMP/pthreads, default: 1)
# -g      number of GPUs to request (default: none)
# -m      memory amount to request (default: 4GB)
# -p      partition to run the job in (default: dev)
# -t      time limit (default: 01:00:00)
```

## Install jupyter dependencies

`ml py-jupyter/1.0.0_py39`

## Start jupyter server

Change port number as needed.

`jupyter notebook --no-browser --port=8888`

## ssh into jupyter-server on another terminal

Make sure to use the correct port number and node id

`ssh -o ServerAliveInterval=5 -o ServerAliveCountMax=2400 -t -L 8888:localhost:8888 chc012@login.sherlock.stanford.edu ssh -L 8888:localhost:8888 sh02-01n57`
