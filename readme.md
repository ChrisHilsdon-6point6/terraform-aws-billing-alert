# Terraform AWS Free Tier Billing Alarm
This is a Terraform configuration to setup Cloudwatch alarm to keep within AWS free tier limits. Going over this limit will send email notification to your configured email address.

## Setup
1. Copy terraform.tfvars.dist to terraform.tfvars and update with AWS credentials and valid email address
2. Run `terraform init` to fetch required provider files
3. Run `terraform plan` checking all resources that will be created
4. Run `terraform apply` to create the Cloudwatch alarm, SNS topic and subscription.
4. Once the SNS topic has been created, you should receive an email from AWS. Click the link to confirm the topic subscription and receive notifications from this alarm.

## Resources used
https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/tracking-free-tier-usage.html
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription
https://github.com/github/gitignore/blob/main/Terraform.gitignore