#!/bin/sh
echo "🚀 Starting Ollama server..."
ollama serve &

echo "⏳ Waiting for Ollama to be ready..."
until ollama list >/dev/null 2>&1; do
  sleep 2
done

echo "🌐 Launching OpenClaw + kimi-k2.5:cloud (this may take 1-3 minutes first time)..."
ollama launch openclaw --model kimi-k2.5:cloud --yes

echo "✅ OpenClaw is now running!"
echo "   Chat at: http://localhost:11434"
echo "   Keep this container alive with: docker compose up -d"

# Keep container running forever
tail -f /dev/null
