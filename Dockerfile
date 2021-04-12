FROM mcr.microsoft.com/azureml/base-gpu:openmpi3.1.2-cuda10.1-cudnn7-ubuntu18.04
MAINTAINER marc@marcbrockschmidt.de

# Set bash, as conda doesn't like dash:
SHELL [ "/bin/bash", "--login", "-c" ]
# Make bash aware of conda:
RUN echo ". /opt/miniconda/etc/profile.d/conda.sh" >> ~/.profile

# Install the extra dependencies into the default environment, so that downstream
# users don't need to choose the container AND switch environments:
COPY ./ml4chem.yml /tmp/
RUN conda env update -p /opt/miniconda -f /tmp/ml4chem.yml
RUN conda clean --all --yes
