output name {
  value       = random_string.rString.id
  description = "this out put of random provider"
  depends_on  = [random_string.rString]
}
