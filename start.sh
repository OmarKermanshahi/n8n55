#!/bin/bash
# Set Ngrok token from Render's environment
./ngrok authtoken $NGROK_AUTHTOKEN

# Start Ngrok tunnel in background
./ngrok http 5678 > /dev/null &

# Start n8n
n8n start
