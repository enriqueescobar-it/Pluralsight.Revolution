# Vector with numerics from 1 up to 10
my_vector <- 1:10 
# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)
# First 10 elements of the built-in data frame 'mtcars'
my_df <- mtcars[1:10,]
# Construct 'my_list' with these different elements:
my_list <- list(vec = my_vector, mat = my_matrix, df = my_df)
# The Shining string, vector, data.frame
moviename <- "The Shining"
actors <- c("Jack Nicholson","Shelley Duvall","Danny Lloyd","Scatman Crothers","Barry Nelson")
scores <- c(4.5,4.0,5.0)
sources <- c("IMDb1","IMDb2","IMDb3")
comments <- c("Best Horror Film I Have Ever Seen","A truly brilliant and scary film from Stanley Kubrick","A masterpiece of psychological horror")
reviews <- data.frame(scores, sources, comments)
# Create the list 'shining_list'
shining_list <- list(moviename = "The Shining", actors = actors, reviews = reviews)
# Define 'last_actor'
last_actor <- shining_list$actors[length(shining_list$actors)]
# Define 'second_review'
second_review <- shining_list$reviews[2,]
# We forgot something; add the year to shining_list:
shining_list_full <- c(shining_list, year = 1980)
# Have a look at shining_list_full
str(shining_list_full)
