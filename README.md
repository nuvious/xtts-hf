---
title: XTTS
emoji: 🐸
colorFrom: green
colorTo: red
sdk: gradio
sdk_version: 3.44.2
app_file: app.py
pinned: false
models:
- coqui/XTTS-v1
---

Check out the configuration reference at https://huggingface.co/docs/hub/spaces-config-reference

To build/run in docker:

```bash
mkdir -p tts-data
docker build -t xtts-hf .
# Run interactive to agree to TOS and download model
docker run --rm -it -v "$PWD/tts-data":/root/.local/share/tts -p 7860:7860 xtts-hf
# After initial download can run in a daemon mode
docker run -d -v "$PWD/tts-data":/root/.local/share/tts -p 7860:7860 xtts-hf
```