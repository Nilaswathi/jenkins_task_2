
#!/bin/bash

echo "=================================="
echo "Jenkins Task-2 Build Started"
echo "=================================="

echo "Build date: $(date)"
echo "Hostname: $(hostname)"
echo "Current directory: $(pwd)"

echo "Checking required commands..."

for cmd in bash git; do
    if command -v "$cmd" >/dev/null 2>&1; then
        echo "$cmd is installed"
    else
        echo "ERROR: $cmd is not installed"
        exit 1
    fi
done

echo "Build completed successfully!"
echo "=================================="

