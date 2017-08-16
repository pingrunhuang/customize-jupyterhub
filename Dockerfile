# This dockerfile is extended from the singleuser https://github.com/jupyterhub/dockerspawner/blob/master/singleuser/Dockerfile

FROM jupyter/scipy-notebook

RUN pip install tensorflow


# copy the chinese font to the matplotlib built in lib directory
COPY ./simhei.ttf /opt/conda/lib/python3.6/site-packages/matplotlib/mpl-data/fonts/ttf/

RUN rm -rf ~/.cache/matplotlib

COPY ./package-to-embed /opt/conda/lib/python3.6/site-packages/package-to-embed

RUN /usr/local/bin/start-singleuser.sh -h

CMD ["/usr/local/bin/start-singleuser.sh"]
