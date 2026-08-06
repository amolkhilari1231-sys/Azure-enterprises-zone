# ☁️ Azure Enterprise Landing Zone using Terraform

![Azure](https://img.shields.io/badge/Microsoft-Azure-0078D4?logo=microsoftazure&logoColor=white)
![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-2088FF?logo=githubactions&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

---

# 📖 Overview

This repository demonstrates a production-style **Azure Enterprise Landing Zone** built using **Terraform** following Infrastructure as Code (IaC) best practices.

The objective of this project is to provide a secure, scalable, and enterprise-ready Azure foundation with governance, networking, identity, security, and monitoring components.

---

# 🏗️ Architecture

This project follows the Azure Landing Zone architecture and includes:

- Management Groups
- Azure Subscriptions
- Resource Groups
- Hub & Spoke Network
- Virtual Networks
- Network Security Groups
- Azure Bastion
- Azure Firewall
- NAT Gateway
- Public IP
- Azure Load Balancer
- Application Gateway
- Private Endpoints
- Azure Monitor
- Log Analytics Workspace
- Azure Backup
- Azure RBAC
- Azure Policy
- Azure Tags
- Naming Convention

---

# 📂 Repository Structure

```text
Azure-enterprises-zone
│
├── .github/
│   └── workflows/
│       └── terraform-ci.yml
│
├── modules/
│   ├── resource_group/
│   ├── virtual_network/
│   ├── subnet/
│   ├── nsg/
│   ├── bastion/
│   ├── firewall/
│   ├── nat_gateway/
│   ├── application_gateway/
│   ├── load_balancer/
│   ├── storage_account/
│   └── virtual_machine/
│
├── environments/
│   ├── dev/
│   ├── qa/
│   └── prod/
│
├── diagrams/
│
├── README.md
│
└── .gitignore
```

---

# 🚀 Features

- Enterprise Landing Zone
- Infrastructure as Code (Terraform)
- Reusable Terraform Modules
- Hub & Spoke Architecture
- Azure Governance
- Azure Policy
- Azure RBAC
- Secure Networking
- CI Pipeline using GitHub Actions
- Terraform Validation
- TFLint
- tfsec Security Scan

---

# ☁️ Azure Services

- Resource Groups
- Virtual Network
- Subnets
- Network Security Groups
- Azure Bastion
- Azure Firewall
- NAT Gateway
- Public IP
- Load Balancer
- Application Gateway
- Azure Storage Account
- Azure Key Vault
- Azure Monitor
- Log Analytics Workspace
- Azure Backup
- Recovery Services Vault
- Virtual Machines

---

# ⚙️ CI Pipeline

The GitHub Actions pipeline performs:

- Checkout Repository
- Setup Terraform
- Terraform Format
- Terraform Init
- Terraform Validate
- Terraform Lint (TFLint)
- tfsec Security Scan

---

# 🚀 Getting Started

## Clone Repository

```bash
git clone https://github.com/amolkhilari1231-sys/Azure-enterprises-zone.git
```

## Initialize Terraform

```bash
terraform init
```

## Validate Configuration

```bash
terraform validate
```

## Format Terraform Code

```bash
terraform fmt -recursive
```

## Create Execution Plan

```bash
terraform plan
```

## Deploy Infrastructure

```bash
terraform apply
```

---

# 📌 Design Principles

- Modular Architecture
- Infrastructure as Code
- Least Privilege Access
- Secure by Default
- Governance First
- Reusable Modules
- Enterprise Naming Standards
- Cost Optimization
- High Availability
- Scalable Design

---

# 🔐 Security

- Azure RBAC
- Azure Policy
- Network Security Groups
- Azure Firewall
- Private Endpoints
- tfsec
- TFLint

---

# 📈 Future Enhancements

- Azure Kubernetes Service (AKS)
- Azure Front Door
- Azure SQL
- Azure PostgreSQL
- Azure Container Registry
- Azure DevOps Pipeline
- GitHub Environment Protection
- Checkov
- TruffleHog
- Terratest

---

# 📚 References

- Azure Landing Zone Architecture
- Microsoft Cloud Adoption Framework
- Terraform Documentation

---

# 👨‍💻 Author

**Amol Khilari**

Azure DevOps Engineer

### Skills

- Microsoft Azure
- Terraform
- GitHub Actions
- Azure DevOps
- Infrastructure as Code
- DevSecOps

GitHub

https://github.com/amolkhilari1231-sys

---

# ⭐ Support

If you found this repository useful, please ⭐ Star the repository.
