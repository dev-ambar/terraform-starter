resource local_file sample_res {
  content = "multiple provider example"
  filename = "sample.txt"

}

resource random_string rString {
  length  = 10
}

