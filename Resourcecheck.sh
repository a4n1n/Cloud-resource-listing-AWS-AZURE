#!/bin/bash

CLOUD="$1"
SERVICE="$2"
REGION="${3:-us-east-1}"  # Default AWS region

if [ -z "$CLOUD" ] || [ -z "$SERVICE" ]; then
    echo "Usage: $0 {aws|azure} <service> [aws-region]"
    exit 1
fi

### =================== AWS SECTION =================== ###
if [ "$CLOUD" == "aws" ]; then

    case "$SERVICE" in
        ec2) aws ec2 describe-instances --region "$REGION" ;;
        s3) aws s3api list-buckets ;;
        iam) aws iam list-users ;;
        lambda) aws lambda list-functions --region "$REGION" ;;
        rds) aws rds describe-db-instances --region "$REGION" ;;
        ebs) aws ec2 describe-volumes --region "$REGION" ;;
        cloudwatch) aws logs describe-log-groups --region "$REGION" ;;
        sns) aws sns list-topics --region "$REGION" ;;
        sqs) aws sqs list-queues --region "$REGION" ;;
        cloudformation) aws cloudformation list-stacks --region "$REGION" ;;
        *)
            echo " Unsupported AWS service: $SERVICE"
            ;;
    esac

### =================== AZURE SECTION =================== ###
elif [ "$CLOUD" == "azure" ]; then

    case "$SERVICE" in
        vms) az vm list ;;
        resource-groups) az group list ;;
        storage) az storage account list ;;
        webapps) az webapp list ;;
        sql)
            az sql server list
            az sql db list --all
            ;;
        functions) az functionapp list ;;
        cosmos) az cosmosdb list ;;
        aks) az aks list ;;
        *)
            echo " Unsupported Azure service: $SERVICE"
            ;;
    esac

else
    echo " Unsupported cloud provider: $CLOUD (use 'aws' or 'azure')"
    exit 1
fi
