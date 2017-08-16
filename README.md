> Jupyterhub is a multi-user python notebook. It allows many users to access the notebook by providing them with the username and password that are in favor. There are many extensions available on the community. It is useful for a class or an office to access the data analysis platform.
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
* persist the data by specifying the `c.DockerSpawner.volumes` in the jupyterhub_config.py file which in my case is /tmp/jupyterhub/{username}.
* able to insert my own package into the container that spawned for each user so that users can use it. To accomplish this, put your package in the `package-to embed` directory and then build the docker image.
* The simhei file is useful for matplotlib to display chinese since matplotlib does not support UNICODE by default. 

To start jupyterhub, type:
```
jupyterhub
```
in the current directory.

## setup jupyterhub blogs:
https://zonca.github.io/2016/10/dockerspawner-cuda.html
https://opensource.googleblog.com/2016/10/using-tensorflow-and-jupyterhub.html
