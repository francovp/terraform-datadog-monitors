# Global Terraform
variable "environment" {
  description = "Environment"
  type        = "string"
}

# Global DataDog
variable "delay" {
  description = "Delay in seconds for the metric evaluation"
  default     = 900
}

variable "message" {
  description = "Message sent when an alert is triggered"
}

variable "filter_tags_use_defaults" {
  description = "Use default filter tags convention"
  default     = "true"
}

variable "filter_tags_custom" {
  description = "Tags used for custom filtering when filter_tags_use_defaults is false"
  default     = "*"
}

# Kinesis-Firehose

variable "incoming_records_silenced" {
  description = "Groups to mute for Kinesis Firehorse incoming records monitor"
  type        = "map"
  default     = {}
}

variable "incoming_records_message" {
  description = "Custom message for Kinesis Firehorse incoming records monitor"
  type        = "string"
  default     = ""
}

variable "incoming_records_timeframe" {
  description = "Monitor timeframe for incoming records metrics evaluation [available values: `last_#m` (1, 5, 10, 15, or 30), `last_#h` (1, 2, or 4), or `last_1d`]"
  default     = "last_15m"
}