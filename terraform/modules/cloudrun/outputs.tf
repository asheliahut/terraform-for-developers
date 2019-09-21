output "isReady" {
  value = local.cloud_run_status["Ready"] == "True"
}
