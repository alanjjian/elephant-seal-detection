FROM tensorflow/tensorflow:2.3.0-gpu

#RUN apt-get update

#RUN apt-get -y update

#RUN apt-get install python3-pip python3-dev build-essential nodejs -y

#RUN ln -s /usr/bin/python3 /usr/local/bin/python 

RUN pip3 install --upgrade pip

RUN pip3 install jupyter

RUN pip3 install jupyterlab

RUN pip3 install keras==2.4.0

RUN pip3 install tensorflow==2.3.0

RUN pip3 install keras_retinanet

RUN pip3 install matplotlib

RUN pip3 install numpy

# because of the following run either the two commented commands or the next uncommented command
# https://forums.developer.nvidia.com/t/notice-cuda-linux-repository-key-rotation/212772
 
#RUN apt-key del 7fa2af80
#RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-keyring_1.0-1_all.deb

RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub

RUN apt-get update

RUN apt-get -y update

RUN apt -y install git


RUN git clone https://github.com/fizyr/keras-retinanet.git

RUN git clone https://github.com/alanjjian/mids-251-elephant-seal.git

RUN git clone https://github.com/martinzlocha/anchor-optimization.git

RUN apt-get -y install wget

RUN wget https://github.com/fizyr/keras-retinanet/releases/download/0.5.1/resnet50_coco_best_v2.1.0.h5

CMD ["python", "keras-retinanet/setup.py", "build_ext", "--inplace"]

