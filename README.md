# CloudWatch ECS + DynamoDB Dashboard (Sample Generic Template)

## Overview
This repo holds a reusable CloudWatch dashboard definition to monitor:
- **ECS**: CPU, memory, desired vs running tasks
- **DynamoDB**: read/write throughput & throttling

### Files
- `dashboard.json` — CloudWatch dashboard definition in JSON format
- `main.tf` - Terraform to deploy it  

### Usage

1. **Fill in placeholders**  
   Edit `dashboard.json`, replacing:
    - `${ECS_CLUSTER_NAME}`
    - `${DDB_TABLE_NAME}`
    - `${AWS_REGION}`


2. **Deploy with AWS CLI**
   ```bash
   aws cloudwatch put-dashboard \
     --dashboard-name demo-ecs-ddb \
     --dashboard-body file://dashboard.json