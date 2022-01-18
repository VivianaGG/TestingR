library(tidyverse)
library(skimr)
library(janitor)
# Import data
bookings_df <- read_csv("hotel_bookings.csv") 

# Getting to know your data
glimpse(bookings_df)
head(bookings_df)
str(bookings_df)
colnames(bookings_df)
skim_without_charts(bookings_df) # provides a detailed summary of the data

# Cleaning the data
## In this example we are going to assume we need to know the 
## relationship between 'hotel', 'is_canceled' and 'lead_time', so we need a new
## data frame with these three columns
trimmed_df <- bookings_df %>% 
        select("hotel", "is_canceled", "lead_time") %>% 
        rename(hotel_type = hotel) ## Rename columns to better understanding it
## Combine or split data in different columns by using the function unite()
example_df <- bookings_df %>%
        select(arrival_date_year, arrival_date_month) %>% 
        unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ") # unite data from two columns
## Creating a new column
example_df <- bookings_df %>%
        mutate(total_guests = adults + children + babies)

# Calculating some summary statistics
example_df <- bookings_df %>%
        summarise(number_canceled = sum(is_canceled), average_lead_time = mean(lead_time)) 
        
        


