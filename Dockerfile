# We're using Ubuntu 20.10
FROM privatener29/lonelywolfdock:lonelywolf

RUN git clone TG-LoneUbot https://github.com/W29F/TG-LoneWolf-Ubot.git /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/W29F/TG-LoneWolf-Ubot/master/requirements.txt

CMD ["python3","-m","userbot"]
