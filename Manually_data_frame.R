# Transform our data

id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", 
          "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", 
               "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

# To separate columns
employee %>% 
        separate(name, into = c('first_name', 'last_name'), sep = " ")

# To unite columns
unite(employee, 'name', first_name, lasta_name, sep = ' ')

# change a data frame in a wide to long format or the opposite
#pivot_longer() or pivot-wider() function 