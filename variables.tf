variable "sg_ingress_rules" {
    type = list(object({
                from_port = number
                to_port = number
                cidr_blocks = string
                }))


    default = [
        {
          from_port   = 22
          to_port     = 22
          cidr_blocks = "0.0.0.0/16" 
        },
        {
          from_port   = 23
          to_port     = 23
          cidr_blocks = "0.0.0.0/32"
        },
        {
          from_port   = 443
          to_port     = 443
          cidr_blocks = "0.0.0.0/24"
        }
    ]
    }

variable "users" {

type = list(string)
default = ["one","two","three"]
}

