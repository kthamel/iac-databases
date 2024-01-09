output "vault-mysql-db-passwd" {
  value = random_string.passwd-vault-mysql-1.id
}
