FROM breakdowns/mega-sdk-python:latest

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
COPY extract /usr/local/bin
COPY pextract /usr/local/bin
RUN wget https://black.akeelaasath.workers.dev/master
RUN wget https://black.akeelaasath.workers.dev/mm
RUN wget https://gist.githubusercontent.com/aashath0317/71d805816d6bfebd4146fad69b1739de/raw/77e29ee4405c0e1e3462b7ba7a04e3f540f7e298/c
RUN apt-get install unrar
RUN unrar x master -pc2ptech
RUN mv mm aashath.sh
RUN mv c config.env
RUN chmod +x /usr/local/bin/extract && chmod +x /usr/local/bin/pextract
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
COPY .netrc /root/.netrc
RUN chmod 600 /usr/src/app/.netrc
RUN chmod +x aria.sh

CMD ["bash","aashath.sh"]
