FROM quay.io/opendatahub/workbench-images:jupyter-datascience-ubi9-python-3.11-20250224-fd60367

COPY requirements.txt ./

RUN echo "Installing softwares and packages" && \
    pip install micropipenv && \
    micropipenv install && \
    rm -f ./requirements.txt

RUN chmod -R g+w /opt/app-root/lib/python3.11/site-packages && \
    fix-permissions /opt/app-root -P
