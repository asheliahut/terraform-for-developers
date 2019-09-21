variable "project_id" {
  type        = string
  description = "The project id associated to the gcp account."
}

variable "location" {
  type        = string
  default     = "us-central1"
  description = "The gcp region to set the application."
}

variable "service_name" {
  type        = string
  default     = "cool-php-app-service"
  description = "The gcp name for the cloud run service."
}

variable "url" {
  type        = string
  default     = "https://URL_ASSOCIATED_TO_ACCOUNT.com"
  description = "The url the application should run at."
}

variable "container_location" {
  type        = string
  default     = "gcr url"
  description = "The gcr location of our applications docker container."
}
