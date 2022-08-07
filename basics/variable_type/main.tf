resource local_file  sample_res {
    filename = var.fileName
    content = var.fileContent["name"] 
}