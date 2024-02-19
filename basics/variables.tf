variable "newfilename" {
  default = [
    "file1.txt",
    "file2.txt",
    "file3.txt",
    "file4.txt",
    "file5.txt",
    "file6.txt",
  ]
}

variable "newsetoffilename" {
    type = set(string)
  default = [
    "1file1.txt",
    "1file2.txt",
    "1file3.txt",
    "1file4.txt",
    "1file5.txt",
    "1file6.txt",
    "1file5.txt",
  ]
}

variable "filename1" {
  default = "file1.txt"
}

variable "content1" {
  default = "Hello guys, 123new modification. this is the first terraform code. modifying content"
}

variable "filename2" {
  default = "filenew.txt"
}

variable "content2" {
  default = "Hello guys, 123this is different content"
}

variable "length" {
  default = 1
}

variable "separator" {
  default = "-"
}

variable "prefix" {
  default = "Mr"
}