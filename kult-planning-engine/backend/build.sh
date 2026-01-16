#!/bin/bash
# Railway-specific build script

echo "=== KULT Planning Engine - Railway Build ==="
echo "Node version: $(node --version)"
echo "NPM version: $(npm --version)"

# Set environment for native dependencies
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export CANVAS_PREBUILT=true

# Install dependencies with optional handling
echo "Installing dependencies..."
npm install --legacy-peer-deps --no-optional 2>&1 || {
    echo "Full install failed, trying without optional dependencies..."
    npm install --legacy-peer-deps --no-optional --ignore-scripts
}

echo "=== Build Complete ==="
