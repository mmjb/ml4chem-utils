FROM mcr.microsoft.com/azureml/base-gpu:openmpi3.1.2-cuda10.1-cudnn7-ubuntu18.04
MAINTAINER marc@marcbrockschmidt.de

COPY . .
RUN conda env create -f ml4chem.yml

