# This dockerfile is extended from the singleuser https://github.com/jupyterhub/dockerspawner/blob/master/singleuser/Dockerfile

FROM jupyter/scipy-notebook

RUN pip install tensorflow

# since copy is copying the content of the directory specified, so we have to create it first
RUN mkdir /opt/conda/lib/python3.6/site-packages/package-to-embed

COPY ./package-to-embed /opt/conda/lib/python3.6/site-packages/package-to-embed

RUN /usr/local/bin/start-singleuser.sh -h
CMD ["/usr/local/bin/start-singleuser.sh"]
