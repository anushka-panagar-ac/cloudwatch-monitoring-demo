# CloudWatch ECS + DynamoDB Dashboard (Sample Generic Template)

## Overview
This repo holds a reusable CloudWatch dashboard definition to monitor:
- **ECS**: CPU, memory, desired vs running tasks
- **DynamoDB**: read/write throughput & throttling

### Files
- `dashboard.json` — CloudWatch dashboard definition in JSON format
- `main.tf` - Terraform to deploy it  

