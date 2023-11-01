variable "aws_region" {
  type = string
  description = "Specify the AWS region this alarm is deployed in"
}

variable "aws_access_key" {
  type = string
  description = "AWS access key"
}

variable "aws_secret_key" {
  type = string
  description = "AWS secret key"
}

variable "sns_alert_email" {
  type = string
  description = "Valid email address alarm notifications get sent"
}

variable "cw_alarm_period" {
  type = number
  default = 1
  description = "Interval to check alarm in hours"
}