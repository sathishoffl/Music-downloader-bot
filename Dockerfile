FROM sathishsk/wzml:latest

RUN apt-get -y update 
RUN apt-get install -y ffmpeg 

WORKDIR /app

copy requirements.txt req.txt
RUN pip3 install --no-cache-dir -r req.txt 

COPY . .

CMD ["bash", "start.sh"]
