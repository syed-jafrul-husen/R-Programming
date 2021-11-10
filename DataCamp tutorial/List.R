# Vector - Matrix - List
# Vector 1D - same type
# Matrix 2D - same type
# List
  # Different R objects
  # No coercion
  # Loss of some funtionality




# Create List
c("Rsome times", 190, 5) # vector

list("Rsome times", 190, 5)

song <- list("Rsome", 190, 5)
is.list(song)


# Name List
song <- list("Rsome", 190, 5)
names(song) <- c("title", "duration", "track")
song
# OR
song <- list(title="Rsome times",
             duration=150,
             track=5)
#better way to print list
str(song)




#List in List
similar_song <- list(title="R you on time?",
                     duration=130)
song <- list(title="Rsome times", 
             duration=150, track=5,
             similar = similar_song)
str(song)





  #     Subset and Extend a List
# [ versus [[
song[1] # results a list
song[[1]] #Only access single elements using double brackets

song[c(1,3)]
song[[c(1,3)]] #Error(index out of bound) because double brackets use to select single elements
#similar to previous
song[[1]][[3]]

#it will works
song[[4]][[1]]
song[[c(4,1)]] #same to previous




#Subset by names
song[["duration"]]
song["duration"]

song[c("duration","similar")]
song[c("duration","similar")]



#Subsetting by logical(only possible for single brackets version)
#works
song[c(FALSE, TRUE, TRUE, FALSE)]

#doesn't works
song[[c(FALSE, TRUE, TRUE, FALSE)]]
#because it works as follows
song[[F]][[T]][[T]][[F]]




# $ and Extending
song$duration

friends <- c("A", "B", "C", "D")
song$sent <- friends
song
#same result
song[["sent"]] <- friends
song


song$similar$reason <- "too long"
song


# Wrap-Up
  # [ or [[ ?
    # [[ to select list element
    # [ results in sublist
  # [[ and $ to subset and extend lists