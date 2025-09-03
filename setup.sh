#!/bin/bash

# Setup script for NYC Mayoral Primary Map

echo "🗽 NYC Mayoral Primary Map Setup"
echo "================================"
echo

# Check if config.js exists
if [ ! -f "config.js" ]; then
    echo "📋 Creating config.js from template..."
    cp config.example.js config.js
    echo "✅ config.js created"
    echo
    echo "⚠️  IMPORTANT: Edit config.js and add your Mapbox access token!"
    echo "   Get a token at: https://www.mapbox.com/"
    echo
else
    echo "✅ config.js already exists"
    echo
fi

# Check for Python
if command -v python3 &> /dev/null; then
    echo "🐍 Python 3 found - you can run:"
    echo "   python3 -m http.server 8000"
    echo
elif command -v python &> /dev/null; then
    echo "🐍 Python found - you can run:"
    echo "   python -m http.server 8000"
    echo
fi

# Check for Node.js
if command -v node &> /dev/null; then
    echo "📦 Node.js found - you can run:"
    echo "   npx serve ."
    echo "   or"
    echo "   npm install && npm start"
    echo
fi

# Check for PHP
if command -v php &> /dev/null; then
    echo "🐘 PHP found - you can run:"
    echo "   php -S localhost:8000"
    echo
fi

echo "🌐 After starting a server, open: http://localhost:8000"
echo
echo "🚀 Setup complete! Don't forget to add your Mapbox token to config.js"
