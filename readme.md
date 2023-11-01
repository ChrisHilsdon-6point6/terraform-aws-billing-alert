# Terraform AWS Free Tier Billing Alarm
This is a Terraform configuration to setup Cloudwatch alarm to keep within AWS free tier limits. Going over this limit will send email notification to your configured email address.

## Setup
1. Copy terraform.tfvars.dist to terraform.tfvars
2. Update terraform.tfvars with AWS credentials and valid email address for notification
3. Run `terraform init` to fetch required provider files
4. Run `terraform plan` checking all resources that will be created
5. Run `terraform apply` to create the Cloudwatch alarm, SNS topic and subscription.
6. Once the SNS topic has been created, you should receive an email from AWS. Click the link to confirm the topic subscription and receive notifications from this alarm.

## Extra
By default the CloudWatch alarm interval is set to 1 hour. You can change this by setting the `cw_alarm_period` terraform variable in terraform.tfvars. This should be type number.

## Resources used
https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/tracking-free-tier-usage.html
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription
https://github.com/github/gitignore/blob/main/Terraform.gitignore