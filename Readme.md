# Terraform 
## Javier Barreda Homework

1. Read the main file of the vpc https://github.com/terraform-aws-modules/terraform-aws-vpc/blob/master/main.tf 

    a. Obtain 3 functionalities that you find interesting for example 

### i. element() function 
 It has two parameters, the first is a list and the second is the index of the element that we want to get. The first index is zero. If the index is bigger than the length of the list, the index is "wrapped around" by taking the index modulo the length of the list. 

### ii. dynamic{} Block
 It is useful to create dynamically a set of blocks inside a resource, in this case is used to create into the default security group all the ingress and egress rules, so it iterates a variable and create a rule for each element in the list. 

### iii. coalesce() function

 It takes any number of arguments and returns the first one that isn't null or an empty string. All parameters has to be of the same type.

Some others functions was intersting too, but their purpose was very simple like "merge()", "compact()" or "flatten(), they are useful to manage list and strings. 

2. Deploy the following infrastructure 
    
    a. 

        i. Deploy a VPC (Using the terraform-aws-vpc module) 
        ii. Deploy a EC2 inside that VPC (Module created by yourself) 
    
    https://github.com/javib94/Terraform_homework/tree/main/Deploy1

    b. 

        i. Deploy a VPC (Module created by yourself) 

    https://github.com/javib94/Terraform_homework/tree/main/Deploy2

