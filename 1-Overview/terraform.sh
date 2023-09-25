#!/bin/bash

# this is for aarch64

# Update package lists
sudo apt-get update

# Install required packages
sudo apt-get install -y software-properties-common

# Add the HashiCorp GPG key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Add the HashiCorp repository
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

# Update package lists again
sudo apt-get update

# Install Terraform
sudo apt-get install -y terraform
