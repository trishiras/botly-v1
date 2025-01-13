#!/bin/bash

# Start Ollama server in the background
ollama serve &
OLLAMA_PID=$!

# Wait for Ollama to be ready
/usr/src/app/wait-for-it.sh localhost:11434 -t 60 -- echo "Ollama is up"

# Pull the model
ollama pull deepseek-r1:1.5b

# Wait for Ollama server to complete (if needed)
wait $OLLAMA_PID &

# Start Open WebUI
open-webui serve