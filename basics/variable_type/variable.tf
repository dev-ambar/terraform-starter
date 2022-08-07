variable fileName {
  type        = string
  default     = "sample.txt"
  description = "this a file name"
}

/* variable fileContent {
  type        = string
  default     = "I love my India"
  description = "this a file content"
} */

/* variable fileContent {
  type        = number
  default     = 26
  description = "this a file content"
} */

/* variable fileContent {
  type        = bool
  default     = true
  description = "this a file content"
} */

/* variable fileContent {
  type        = list(string)
  default     = ["Ram","Shyam","Hanuman"]
  description = "this a file content"
} */

/* variable fileContent {
  type        = tuple([string,number,bool])
  default     = ["Ram",25,true]
  description = "this a file content"
} */

variable fileContent {
  type        = map
  default     = {name="Ram", age=26}
  description = "this a file content"
}