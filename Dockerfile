FROM ubuntu:14.04

#ADD etc/apt/sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y git
RUN apt-get install -y python3 python3-pip
RUN apt-get install -y libatlas3-base libatlas-base-dev
RUN apt-get build-dep -y python3-numpy python3-scipy
RUN pip3 install numpy
RUN pip3 install gensim nltk==3.0.0b1
RUN pip3 install sklearn

# Some corpus for nltk
#RUN python3 -m nltk.downloader -d /usr/share/nltk_data brown
#RUN python3 -m nltk.downloader -d /usr/share/nltk_data punkt
#RUN python3 -m nltk.downloader -d /usr/share/nltk_data words
#RUN python3 -m nltk.downloader -d /usr/share/nltk_data stopwords
#RUN python3 -m nltk.downloader -d /usr/share/nltk_data names
COPY TextClassification.py /src/TextClassification.py
COPY preprocssing.py /src/preprocssing.py
COPY ratings.txt /src/ratings.txt
COPY reviews.txt /src/reviews.txt
COPY rating_prediction.py /src/rating_prediction.py
COPY text_cnn.py /src/text_cnn.py
COPY eval.py  /src/eval.py
COPY data_helpers.py /src/data_helpers.py

#RUN apt-get install python-pip python-dev build-essential 
#export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.12.1-cp27-none-linux_x86_64.whl

RUN apt-get update && apt-get install -y \
    php5-mcrypt \
    python-pip

#RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
#    python get-pip.py && \
#    rm get-pip.py

#RUN pip --no-cache-dir install \
        #ipykernel \
        #jupyter \
        #matplotlib \
   #     numpy \
   #     scipy \
   #     sklearn \
   #     Pillow \
      #  && \
    #python -m ipykernel.kernelspec
RUN pip  install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.12.1-cp27-none-linux_x86_64.whl
#RUN pip install --upgrade $TF_BINARY_URL
#pip install numpy
#python 2

