FROM jupyter/datascience-notebook
MAINTAINER Justin Henderson justin@hasecuritysolutions.com

ARG conda_env=python38
ARG py_ver=3.8

COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
