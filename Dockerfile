FROM jupyter/minimal-notebook:65761486d5d3 

MAINTAINER Mainak Jas <mjas@mgh.harvard.edu>


# *********************As User ***************************
USER root

# *********************Unix tools ***************************
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -yq dist-upgrade \
    && apt-get install -yq --no-install-recommends \
    openssh-client \
    vim \ 
    curl \
    gcc \
    && apt-get clean

USER $NB_UID


RUN pip install --upgrade pip

# *********************As User ***************************
USER $NB_UID


RUN pip install --upgrade pip

# *********************Extensions ***************************

USER root

RUN apt-get install -yq --no-install-recommends \
    xvfb \
    x11-utils \
    libx11-dev \
    qt5-default \
    && apt-get clean

ENV DISPLAY=:99

USER ${NB_UID}

RUN pip install vtk && \
    pip install numpy && \
    pip install scipy && \
    pip install pyqt5 && \
    pip install xvfbwrapper && \
    pip install pyvista

    
RUN pip install ipywidgets && \
    pip install pillow && \
    pip install scikit-learn && \
    pip install nibabel && \
    pip install mne

RUN ipython -c "import mne; print(mne.datasets.sample.data_path(verbose=False))"

RUN git clone https://github.com/jasmainak/mne-workshop-mit.git && \
    cd mne-workshop-mit

# Add an x-server to the entrypoint. This is needed by Mayavi
ENTRYPOINT ["tini", "-g", "--", "xvfb-run"]
