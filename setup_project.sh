#!/bin/bash

echo "🔧 Exporting environment variable for ROCm (Radeon GPU)..."
export HSA_OVERRIDE_GFX_VERSION=11.0.0

echo "📁 Navigating to the project folder..."
cd ~/Documents/Ironhack/Project2/Group1Project2 || {
  echo "❌ Project folder not found!"
  exit 1
}

# Check if .venv exists
if [ ! -d ".venv" ]; then
  echo "🧪 Creating virtual environment with system site packages..."
  python3 -m venv .venv --system-site-packages
fi

echo "✅ Activating virtual environment..."
source .venv/bin/activate

echo "🚀 All set! AMD GPU is ready via ROCm and virtual environment is active."
echo
echo "ℹ️ To verify GPU usage, run:"
echo 'python -c "import torch; print(torch.cuda.is_available()); print(torch.cuda.get_device_name(0))"'
