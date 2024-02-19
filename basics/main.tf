resource "local_file" "my_file" {
  count=length(var.newfilename)
  filename = var.newfilename[count.index]
  content  = var.content1
}

resource "local_file" "my_file2" {
  filename = var.filename2
  content  = var.content2
  depends_on = [
    local_file.my_file
  ]
}

resource "local_file" "my_file3" {
  filename = "newfile.txt"
  content  = "Hello, this is ${random_pet.my_pet_name.id}. I'm here to automate terraform"
}

resource "random_pet" "my_pet_name" {
  length    = var.length
  prefix    = var.prefix
  separator = var.separator
  depends_on = [
    local_file.my_file2
  ]
}

resource "local_file" "setof_files" {
  count    = length(var.newfilename)
  filename = var.newfilename[count.index]
  content  = var.content1
  depends_on = [
    local_file.my_file3
  ]
}

resource "local_file" "setof_newfiles" {
  filename = each.value
  for_each = var.newsetoffilename
  content  = var.content1
}