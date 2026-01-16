#!/bin/bash
# Railway start script for KULT Planning Engine Backend

echo "Starting KULT Planning Engine Backend..."
echo "Node version: $(node --version)"
echo "NPM version: $(npm --version)"

# Install dependencies if needed
if [ ! -d "node_modules" ]; then
    echo "Installing dependencies..."
    npm install
fi

# Start the server
echo "Starting server..."
node src/demo-server.js
