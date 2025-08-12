# Cloud-resource-listing-AWS-AZURE
Bash script to list and audit AWS &amp; Azure resources from CLI

# ☁️ Cloud Resource Inventory Script (AWS & Azure)

A Bash script to **list and audit cloud resources** in both **AWS** and **Azure** from the command line.  
Supports multiple services, region selection (AWS), and built-in error handling.

---

## 🚀 Features

- 🔹 Supports **AWS** and **Azure** in a single script
- 🔹 Choose cloud provider, service type, and AWS region
- 🔹 Lists **10+ cloud services** (EC2, S3, IAM, RDS, VMs, Storage, SQL, AKS, etc.)
- 🔹 Automatic CLI checks for installation and configuration
- 🔹 Useful for **auditing**, **learning**, and **multi-cloud automation**

---

## 📦 Prerequisites

Need AWS and AZURE CLI installed and Configured.

Steps to Install and Configure AWS CLI.

To Install.

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

To Config.

aws congiure
*Provide Access and Secret key from AWS Console>> Securtiy Creds.*
*Provide Region and File Format*

Steps to Install and Configure Azure CLI.

To Install.

curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

To Config

az login
