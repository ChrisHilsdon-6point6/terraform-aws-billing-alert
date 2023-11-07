variable "aws_access_key" {
  type = string
  sensitive = true
  description = "AWS access key"
}

variable "aws_secret_key" {
  type = string
  sensitive = true
  description = "AWS secret key"
}

variable "sns_alert_email" {
  type = string
  sensitive = true
  description = "Valid email address alarm notifications get sent"
}

variable "cw_alarm_period" {
  type = number
  default = 1
  description = "Interval to check alarm in hours"
}

variable "cw_alarm_threshold" {
  type = string
  description = "Spend limit monthly in USD"
}