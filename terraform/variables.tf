variable "backend_bucket" {
  type        = string
  default     = "app_backend"
  description = "The backend bucket location"
}

variable "backend_prefix" {
  type        = string
  default     = "terraform/state/prod"
  description = "The prefix inside the bucket to go down into allowing you to swap environments if you wanted."
}

variable "project_id" {
  type        = string
  default     = "project_id"
  description = "The project id associated to the gcp account."
}

variable "region" {
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
