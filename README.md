# Instruction
## Follow the instruction on dockerspawner repo first 
```
git clone https://github.com/jupyterhub/dockerspawner.git

cd dockerspawner

python setup.py install
```

## My customize part
In my case, I want to use dockerspawner with singleuser. Also, I need the customized jupyterhub to meet the following requirement:
* mount a data volume in the specified directory for each user
* persist the data.
* able to insert my own package into the container that spawned for each user so that users can use it.

To start jupyterhub, type:
```
jupyterhub
```
in the current directory.
