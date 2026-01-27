output "module_filename" {
  value       = module.mvp_local_file.filename
  description = "Module output: file path that would be created on apply."
}

output "module_content_sha256" {
  value       = module.mvp_local_file.content_sha256
  description = "Module output: SHA256 of message content."
}

output "module_content_length" {
  value       = module.mvp_local_file.content_length
  description = "Module output: length of the message content."
}
