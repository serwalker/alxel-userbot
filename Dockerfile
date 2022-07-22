#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b alxel-userbot https://github.com/xiayow/alxel-userbot /home/alxel-userbot/ \
    && chmod 777 /home/alxel-userbot \
    && mkdir /home/alxel-userbot/bin/

COPY ./sample_config.env ./config.env* /home/ayiinuserbot/

WORKDIR /home/alxel-userbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
