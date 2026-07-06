# terraform-db-assessment

terraform-db-assessment/

infra/
├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── ecs/
│   └── rds/

envs/
├── dev/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   └── backend.tf

├── prod/
│   ├── main.tf
│   ├── variables.tf
│   ├── terraform.tfvars
│   └── backend.tf
│
├── database/
│   ├── migrations/
│   └── seed/
│
├── scripts/
│
├── .github/
│   └── workflows/
│
├── README.md
└── .gitignore
