# DevOps Practice Projects

Small se le kar fully automated production-level tak DevOps projects. Sab kuch code se — **Terraform-first on AWS**.

## Repo structure

```
devops-practice-projects/
├── README.md
├── .gitignore
├── Project-01-tf-first-server/
├── Project-02-tf-static-site-s3/
├── ...
└── Project-14-prod-microservices-platform/
```

## Projects

| # | Project | Kya banega | Status |
|---|---|---|---|
| 01 | [Project-01-tf-first-server](./Project-01-tf-first-server) | VPC, Subnet, SG, EC2 + Nginx | 🚧 In progress |
| 02 | Project-02-tf-static-site-s3 | S3 + CloudFront + Route53 + ACM, remote state | ⏳ |
| 03 | Project-03-tf-ansible-webstack | Multiple EC2 + ALB + Ansible | ⏳ |
| 04 | Project-04-docker-app-on-ec2 | Docker, Compose, ECR | ⏳ |
| 05 | Project-05-cicd-github-actions | GitHub Actions + OIDC | ⏳ |
| 06 | Project-06-jenkins-on-aws | Jenkins server + agents | ⏳ |
| 07 | Project-07-tf-multi-env | dev / stage / prod | ⏳ |
| 08 | Project-08-ecs-fargate-app | ECS Fargate + ALB + autoscaling | ⏳ |
| 09 | Project-09-eks-cluster-tf | EKS, node groups, IRSA | ⏳ |
| 10 | Project-10-helm-app-on-eks | ingress-nginx, cert-manager | ⏳ |
| 11 | Project-11-gitops-argocd | ArgoCD | ⏳ |
| 12 | Project-12-observability-stack | Prometheus, Grafana, Loki | ⏳ |
| 13 | Project-13-devsecops-pipeline | Trivy, Checkov, tfsec, Vault | ⏳ |
| 14 | Project-14-prod-microservices-platform | Multi-env EKS, RDS, WAF, canary | ⏳ |

## Rules
- Har project ke baad `terraform destroy`
- Secrets / state / tfvars kabhi commit nahi
- AWS Budget alert on
