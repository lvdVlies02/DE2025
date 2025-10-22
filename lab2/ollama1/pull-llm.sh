#!/bin/bash

# Start Ollama in the background.
/bin/ollama serve &
# Record Process ID.
pid=$!

# Pause for Ollama to start.
sleep 10

echo "Retrieve tinyllama model..."
ollama pull tinyllama
echo "Done!"

# Wait for Ollama process to finish.
wait $pid