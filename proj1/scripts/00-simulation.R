#### Simulate data ####
set.seed(222)

# creating a data set
simulated_data <-
  tibble(ward_name = c("York Centre", 
               "Toronto Centre", 
               "Davenport"), 
         num_registrations = c(200, 
               140,
               192))

# see data table
head(simulated_data)

#testing characteristics of table
simulated_data$ward_name |>
  class() == "character"

simulated_data$num_registrations |>
  class() == "numeric"

unique(simulated_data$ward_name) |>
  length() == 3

