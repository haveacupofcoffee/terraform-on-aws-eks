terraform {
  required_version = "~> 1.7.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
    
  }
}

provider "aws" {
  region = "ca-central-1"
  access_key = "ASIAWSFUDZ624LNUXKSL"
  secret_key = "qJp2rORvrSaBVeX3lFdkNjZLtBJVv0ZDjHTBORAL"
  token = "IQoJb3JpZ2luX2VjEOL//////////wEaCXVzLWVhc3QtMSJIMEYCIQDHDviJ9LUQda1pLayx9M5OQon78U7Nx61+joHLvKNvZwIhAJEkcaCOI+fCigEJlWlFTr6DMo+MhPd4em1ylUwXVhDlKvgBCJv//////////wEQAxoMNDUxMzQ5MzAzMjIxIgw6z6eDLkHcCAqq+s4qzAGPloCt0r16W2klWKHhER51fxu7pKiMfSWCrwzwq4fdlGnoJBT0GpPH8NVWYnlRGT5Gieq1asGpJNq2vGFzAYylIDFv7FvzOMVoDVrG0hcWYml8iPAnE3Qd9Ymv+2R0V6ZrGbmcxQe384SvcMlTiJm2JhJEJReEHI9ImtqmrD6EfNKtS0Ydaqqx+8xz+H99jcnVmd+wZhgvlvu+X165nNH4R3DcLD85nZqTirv4p7dh6hueVV7ZJVxGoNSQM9bBNUiuPNeyH5XuhmdOg7cw9qDMrQY6lwEZ/rBDFIy175OCfhf9scFNq58Nxeu+yWMy4rG4IljBqj4Qggk8SY5AHUXA5gfuiOM56xithATqXjsF2/BbzzC8kFqOOySXVj+GocNyTm56L5yJ2kzqQ9Sg5X1y7BtZlAa/y5di8sswOqXxZNeO4qb5+5AoHMyLzJX5iQVt6066fD2RbLN/qG2reIOR4FN9sixG4PMSthkg"
  assume_role {
    role_arn = "arn:aws:iam::497919687739:role/admin"
  }
  
}

