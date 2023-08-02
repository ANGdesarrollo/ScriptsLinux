#!/bin/bash

# Step 1: Check if curl is installed
if ! command -v curl &> /dev/null; then
    echo "Curl is not installed. Installing curl..."
    sudo apt update
    sudo apt install -y curl
fi

# Step 2: Check if pip is already installed
python3 -m pip -V >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Pip is not installed. Installing pip..."
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
    python3 get-pip.py --user
fi

# Step 3: Install Ansible
echo "Installing Ansible..."
python3 -m pip install --user ansible

# Step 4: Confirm installation
echo "Confirming Ansible installation..."
ansible --version
if [ $? -ne 0 ]; then
    echo "Ansible could not be installed."
else
    echo "Ansible installation completed."
fi
