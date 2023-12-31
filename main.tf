provider "aws" {
  region = "us-east-1"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}

resource "aws_cloudwatch_metric_alarm" "zero_spend_budget_alarm" {
  alarm_name = "zero_spend_budget"
  alarm_description = "This alarm helps keep within AWS free tier limits."
  metric_name = "EstimatedCharges"
  namespace = "AWS/Billing"
  statistic = "Maximum"
  period = "${var.cw_alarm_period * 60 * 60}"
  threshold = "${var.cw_alarm_threshold}"
  evaluation_periods = "1"
  comparison_operator = "GreaterThanThreshold"
  alarm_actions = [aws_sns_topic.zero_spend_budget_alert.arn]

  dimensions = {
    Currency = "USD"
  }
}

resource "aws_sns_topic" "zero_spend_budget_alert" {
  name = "zero_spend_budget_alert"
}

resource "aws_sns_topic_subscription" "zero_spend_budget_subscription" {
  topic_arn = aws_sns_topic.zero_spend_budget_alert.arn
  protocol  = "email"
  endpoint  = "${var.sns_alert_email}"
}