Log onto Sherlock

`ssh chc012@login.sherlock.stanford.edu`

Go to our directory

`cd $OAK/projects/multiomics/`

Run bash scripts on server

ssh into jupyter-server

`ssh -o ServerAliveInterval=5 -o ServerAliveCountMax=2400 -t -L 8888:localhost:8888 chc012@login.sherlock.stanford.edu ssh -L 8888:localhost:8888 sh02-01n57`
