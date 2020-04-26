# -- root/output ---

# -- Networking/output ---

output "Public Subnets" {
  value = "${join(", ", module.networking.public_subnets)}"
}

output "Subnet IPs" {
  value = "${join(", ", module.networking.subnet_ips)}"
}

output "Public Security Group" {
  value = "${module.networking.public_sg}"
}

# -- compute/output ---

output "Public Instance Id" {
  value = "${module.compute.server_id}"
}

output "Public Instance Ip" {
  value = "${module.compute.server_ip}"
}

# -- storage/output ---
output "Bucket Name" {
  value = "${module.storage.bucketname}"
}
