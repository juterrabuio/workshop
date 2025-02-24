FROM quay.io/opendatahub/workbench-images:jupyter-datascience-ubi9-python-3.11-20250224-fd60367

RUN echo "Installing softwares and packages" && \
    pip install seaborn==0.12.2

RUN chmod -R g+w /opt/app-root/lib/python3.11/site-packages && \
    fix-permissions /opt/app-root -P
