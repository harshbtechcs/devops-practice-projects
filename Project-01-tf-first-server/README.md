# Project 01 — Terraform First Server + Linux Foundation

**Part A:** Terraform se AWS pe ek complete chhota network + Ubuntu web server banana.
**Part B:** Usi EC2 pe Linux, SSH, permissions, systemd, Bash aur cron hands-on.

## Folder structure

```
Project-01-tf-first-server/
├── terraform/     # VPC, subnet, IGW, route table, SG, key pair, Ubuntu EC2
├── scripts/       # Part B ki Bash scripts
└── README.md
```

## Architecture

```
Internet
   │
[Internet Gateway]
   │
VPC 10.0.0.0/16
 └── Public Subnet 10.0.1.0/24  (route 0.0.0.0/0 → IGW)
       └── EC2 t3.micro (Ubuntu 24.04 + Nginx via user_data)
             └── Security Group: 80 from anywhere, 22 from my IP only
```

## Part A — Terraform

### What Terraform creates
- VPC, Internet Gateway, Public Subnet, Route Table + association
- Security Group (HTTP open, SSH sirf mere IP se)
- Key Pair (local public key upload)
- Ubuntu EC2 — IMDSv2 enforced, encrypted gp3 root volume, Nginx auto-install

### Usage

```bash
ssh-keygen -t ed25519 -f ~/.ssh/p01-key -N ""
cd terraform
cp terraform.tfvars.example terraform.tfvars   # my_ip_cidr fill karo
terraform init
terraform fmt && terraform validate
terraform plan -out=tfplan
terraform apply tfplan
# output me website_url open karo, ssh_command se login karo
terraform destroy
```

## Part B — Linux on EC2

1. SSH keys — key pair, passwordless login, `~/.ssh/config`, disable password login
2. Linux basics — filesystem, navigation, grep, find, awk, sed
3. Users & permissions — useradd, groups, chmod/chown, sudo
4. Packages & services — apt, systemctl, custom systemd service
5. Processes & monitoring — ps, top, df, du, free, journalctl
6. Networking — ip, ss, curl, dig, ports, ufw
7. Bash scripting — variables, if/else, loops, functions, args, exit codes
8. Cron — syntax, scheduling, logs

Final scripts: see [scripts/](./scripts)

## What I learned
- Terraform workflow: init → plan → apply → destroy
- Providers, resources, data sources, variables, outputs
- Implicit dependencies (resource references)
- State file kya hai aur commit kyun nahi karte
- user_data se server bootstrap

## Screenshots
_(apply output + browser me website ka screenshot yaha daalo)_
