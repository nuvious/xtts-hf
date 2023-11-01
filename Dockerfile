FROM python:3.9-slim

RUN mkdir -p /app/examples
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
RUN wget https://huggingface.co/spaces/coqui/xtts/resolve/main/examples/female.wav -O examples/female.wav
RUN https://huggingface.co/spaces/coqui/xtts/resolve/main/examples/male.wav -O examples/male.wav

CMD ["app.py"]
