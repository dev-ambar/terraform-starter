resource local_file sample_res {
  filename = var.fileName
  content = "For explicit dependecy example a random string will  comes from random string provider : ${random_string.rString.id}"
  depends_on = [random_string.rString]
}

resource random_string rString {
  length  = 20
}

