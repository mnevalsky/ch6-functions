# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(str1, str2) {
  len1 <- nchar(str1)
  len2 <- nchar(str2)
  diff <- abs(len1 - len2)
  diff >= min(len1, len2)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("hi", "hello")
is_twice_as_long("hello", "hi")
is_twice_as_long("hi", "hey")


# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(str1, str2) {
  diff <- nchar(str1) - nchar(str2)
  if(diff > 0) {
    result <- paste("Your first string is longer by", diff, "characters")
  } else if(diff < 0) {
    result <- paste("Your first string is longer by", abs(diff), "characters")
  } else {
    result <- "Your strings are the same length!"
  }
  result
}

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("hello", "hi")
describe_difference("Tristan", "sup")
describe_difference("a", "hi")
describe_difference("hi", "hi")


