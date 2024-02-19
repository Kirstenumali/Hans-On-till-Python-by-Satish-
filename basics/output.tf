output "filename1" {
  value = local_file.my_file.*.filename
}

output "file1_content" {
  value = local_file.my_file.*.content
}

output "filename2" {
  value = local_file.my_file2.filename
}

output "petname" {
  value = random_pet.my_pet_name.id
}

output "data_fetched" {
  value = data.local_file.read_mydata.content
}