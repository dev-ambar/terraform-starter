resource random_integer rInteger {
  min = 1
  max = 1000
}

resource random_string rString {
  length  = 15
  upper   = true
  lower   = true
  number  = false
  special = false

}

output name1 {
  value       = random_integer.rInteger.result

}

output name2 {
  value       = random_string.rString.result

}


