# Built-in R data set stored in a data frame
mtcars
head(mtcars)
tail(mtcars)
# Investigate the structure of the mtcars data set to get started!
str(mtcars)
# planets
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune");
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883); 
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67);
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE);
# Create the data frame:
planets_df  <-data.frame(planets,type,diameter,rotation,rings)
#
order(planets_df)
# Check the structure of 'planets_df'
str(planets_df)
# All data from the first three planets
closest_planets_df <- planets_df[1:3, ]
# All data from the last three planets
furthest_planets_df <- planets_df[6:8, ]
# Do selection on both rows and columns
furthest_planets_diameter <- planets_df[3:8,"diameter"]
# Create the rings_vector
rings_vector <- planets_df[,"rings"]
rings_vector
# Select the information on planets with rings:
planets_with_rings_df <- planets_df[rings_vector,]
# Planets that are smaller than planet Earth:
small_planets_df  <- subset(planets_df, subset = diameter < 1)
# What is the correct ordering based on the planets_df$diameter variable?
positions <- order(planets_df$diameter, decreasing = TRUE)
# Create new "ordered" data frame:
largest_first_df <- planets_df[positions, ]
