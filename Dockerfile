FROM python:3.9-alpine

RUN mkdir -p /app/examples
WORKDIR /app
RUN pip install -q gradio TTS==0.17.8
RUN wget https://huggingface.co/spaces/coqui/xtts/resolve/main/examples/female.wav -O examples/female.wav
RUN https://huggingface.co/spaces/coqui/xtts/resolve/main/examples/male.wav -O examples/male.wav

CMD ["app.py"]
