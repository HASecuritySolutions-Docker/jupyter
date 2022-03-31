FROM jupyter/datascience-notebook:latest
MAINTAINER Justin Henderson justin@hasecuritysolutions.com

#ARG conda_env=python39
#ARG py_ver=3.9

COPY requirements.txt /tmp/
#RUN pip install --requirement /tmp/requirements.txt && \
#    fix-permissions $CONDA_DIR && \
#    fix-permissions /home/$NB_USER
RUN "${CONDA_DIR}/envs/${conda_env}/bin/pip" install --quiet --no-cache-dir --requirement /tmp/requirements && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
