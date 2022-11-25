# Hold output values from resources. each export values can use else where configuration
# If needed output value is a way to expose the informations
# Output information and make it accessable
# the lable after output key word is name must be valid and in root mudule it use
output "bucket_URl" {
  value = google_storage_bucket.mybucket.url
}
output "network_IP" {
  value       = google_compute_instance.vm_instance.instance_id
  description = "The internal ip address of the instance"
}
output "instance_link" {
  value       = google_compute_instance.vm_instance.self_link
  description = "The URI of the created resource."
}
