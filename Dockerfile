FROM python:3.9-slim

RUN mkdir -p /app/examples
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -q -r requirements.txt
RUN apt-get update && apt-get install ffmpeg wget -y
COPY app.py /app/
COPY examples/ /app/examples/
ENTRYPOINT [ "gradio" ]
CMD ["app.py"]
