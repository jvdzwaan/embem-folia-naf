FROM python:2

WORKDIR /code
RUN pip install lxml==3.3.5
RUN git clone https://github.com/jvdzwaan/SoNar2Naf.git
CMD /bin/bash