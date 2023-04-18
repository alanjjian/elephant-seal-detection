FROM nvcr.io/nvidia/tensorflow:20.09-tf2-py3

RUN pip3 install --upgrade pip

RUN pip3 install jupyter

RUN pip3 install jupyterlab

RUN pip3 install keras==2.4.0

RUN pip3 install tensorflow==2.4.0

RUN pip3 install keras_retinanet

RUN pip3 install matplotlib

RUN pip3 install numpy

RUN pip3 install progressbar2

RUN pip3 install Pillow

RUN pip3 install pandas

RUN apt-get update

RUN apt-get -y update

RUN apt -y install git

RUN apt-get -y install wget

ARG DEBIAN_FRONTEND="noninteractive" 

RUN apt-get -y install python3-opencv

RUN git clone https://github.com/fizyr/keras-retinanet.git

RUN git clone https://github.com/alanjjian/mids-251-elephant-seal.git

RUN git clone https://github.com/martinzlocha/anchor-optimization.git

RUN wget https://github.com/fizyr/keras-retinanet/releases/download/0.5.1/resnet50_coco_best_v2.1.0.h5 

RUN wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1rb_e_N_TLye7oJ_bDhwDucriEomuPwrt' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1rb_e_N_TLye7oJ_bDhwDucriEomuPwrt" -O resnet50_final_seal_weights.h5 && rm -rf /tmp/cookies.txt

CMD ["python3", "keras-retinanet/setup.py", "build_ext", "--inplace"]

