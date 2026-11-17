#!/bin/bash
# EC2 first boot pe ye script root user se chalti hai (log: /var/log/cloud-init-output.log)
set -euxo pipefail

export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get install -y nginx

TOKEN=$(curl -sX PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 300")
INSTANCE_ID=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/instance-id)
AZ=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/placement/availability-zone)

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head><title>Project 01 - Terraform First Server</title></head>
<body style="font-family: sans-serif; text-align: center; margin-top: 80px;">
  <h1>Hello from Terraform! 🚀</h1>
  <p>Project: Project-01-tf-first-server</p>
  <p>Instance: ${INSTANCE_ID}</p>
  <p>AZ: ${AZ}</p>
</body>
</html>
EOF

systemctl enable --now nginx
