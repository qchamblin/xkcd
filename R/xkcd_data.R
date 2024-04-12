# Usually you shouldn't use the library function when making a package, however
# this folder will be ignored and therefore not included for the users. They
# will only see the final phase of the data you create with the following code.
library(jsonlite)

# Create and empty list with 10 elements
json_objects <- vector(mode = "list", 10)

for (i in 1:10) {
  url <- file.path("https://xkcd.com", i, "info.0.json")
  # insert objects at the corresponding positions in the list
  json_objects[[i]] <- jsonlite::read_json(url)
  # when using API or web scraping, it is good etiquette to use this not to
  # overwhelm the rate, and you may get blocked
  Sys.sleep(1)
}

# Now we want to put this all in a dataframe with row bind
xkcd <- do.call(rbind, json_objects)
xkcd_data <- as.data.frame(xkcd)

# This will go in the data folder; it is a data set that only R can open
usethis::use_data(xkcd_data, overwrite = TRUE)
