variable "myvar" {
    type = string
    default = "hello terraform"
}

variable "mymap" {
    type = map(string)
    default = {
        mykey = "myvalue"
    }
}

variable "mylist" {
    type = list
    default = ["value1", "value2", "value3"]
}
