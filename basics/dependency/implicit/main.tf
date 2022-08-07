resource local_file sample_res {
  filename = "implicit.txt"
  content = "For implicit dependecy example a random string will  comes from random string provider : ${random_string.rString.id}"
}

resource random_string rString {
  length  = 10
}

