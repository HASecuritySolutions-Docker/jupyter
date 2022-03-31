FROM jupyter/datascience-notebook:latest
MAINTAINER Justin Henderson justin@hasecuritysolutions.com

#ARG conda_env=python39
#ARG py_ver=3.9

COPY requirements.txt /tmp/
#RUN pip install --requirement /tmp/requirements.txt && \
#    fix-permissions $CONDA_DIR && \
#    fix-permissions /home/$NB_USER
RUN /opt/conda/bin/pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
