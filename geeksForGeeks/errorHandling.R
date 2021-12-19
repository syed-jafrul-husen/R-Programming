# Handling error in R programming ##################

# stop(.): It halts the evaluation of the current statement and generates a message argument.

# waiting(.): It's evaluation depends on the value of the error option warn. If the value of warn is 
# negative then it is ignored. In case the value is 0 (zero) they are stored and printed only after the 
# top-level function completes its execution. If the value is 1 (one) then it is printed as soon as 
# it has been encountered while if the value is 2 (two) then immediately the generated warning is 
# converted into an error.

# tryCatch(.): It helps to evaluate the code and assign the exceptions.


# try(): it helps us to continue with the execution of the program even when an error occurs.
# tryCatch(): it helps to handle the conditions and control what happens based on the conditions.
# withCallingHandlers(): it is an alternative to tryCatch() that takes care of the local handlers.


# try-catch-finally  syntax:
  # check = tryCatch({
  #   expression
  # }, warning = function(w){
  #   code that handles the warnings
  # }, error = function(e){
  #   code that handles the errors
  # }, finally = function(f){
  #   clean-up code
  # })

# Getting an argument
arg <- commandArgs(trailingOnly = TRUE)
a <- arg[1]

a <- FALSE
print(a)

# Defining divition function and cheecking for error
div <- function(no, a)
{
  if(a=='warning')
  {
    val <- 'It is a warning'
    warning("warning message")
  }
  else if(a=='error')
  {
    val <- 'It is an error'
    stop("error!!")
  }
  else
  {
    val <- no/as.numeric(a)
  }
  return (val)
}

# Evaluation of tryCatch
check <- tryCatch({
  b <- 12
  e <- div(b, a)
},
  warning = function(war){
    print(paste("My Warning: ", war))
  },
  error = function(err){
    print(paste("My Error: ", err))
  },
  finally = function(f){
    print(paste("e: ", e))
  }
)

print(paste("Result: ", check))



# withCallingHandlers
check <- function(expression){
  withCallingHandlers(expression,
                      warning = function(w){
                        message("warning:\n", w)
                      },
                      error = function(e){
                        message("error:\n", e)
                      },
                      finally = {
                        message("Completed")
                      })
}
check({10/2})
check({10/0})
check({10/'noe'})




# Condition Handling in R ###################################

success <- try(100 + 200) 
failure <- try("100" + "200")
class(success) 
class(failure) 

# When we put the code inside the try block, code executes, even error occurs, and also for correct 
# results, it will be the last result evaluated, and if a failure, it will give with "try-error".
# tryCatch() specifies handler functions that control what happens when a condition is signaled.  One 
# can take different actions for warnings, messages, and interrupts. 

display_condition <- function(inputcode){
  tryCatch(inputcode,
           error = function(c) "Unexpected error occurred",
           warning = function(c) "warning message, but still need to look into code",
           message = function(c) "Friendly message, tale precaution")
}

display_condition(stop("!"))  
display_condition(warning("?!")) 
display_condition(message("?")) 
display_condition(10000)


# withCallingHandlers() is an alternative to tryCatch(). It establishes local handlers, whereas 
# tryCatch() registers existing handlers. This will be most useful to handle a message with 
# withCallingHandlers() rather than tryCatch() since the latter will stop the program.

# Using tryCatch()
message_handler <- function(c) cat("Important message is caught!\n") 
tryCatch(message = message_handler, 
         { 
           message("1st value printed?") 
           message("Second value too printed!") 
         })

# Using withCallingHandlers() 
message_handler <- function(c) cat("Important message is caught!\n") 
withCallingHandlers(message = message_handler, 
                    { 
                      message("1st value printed?") 
                      message("Second value too printed!") 
                    })





# Debugging ############################

# Debugging in R is through warnings, messages, and errors. Debugging in R means debugging functions. 
# Various debugging functions are:
  # Editor breakpoint
  # traceback()
  # browser()
  # recover()

# Editor Breakpoints can be added in RStudio by clicking to the left of the line in RStudio or pressing 
# Shift+F9 with the cursor on your line. A breakpoint is same as browser() but it doesn't involve 
# changing codes. Breakpoints are denoted by a red circle on the left side, indicating that debug mode 
# will be entered at this line after the source is run.

# The traceback() function is used to give all the information on how your function arrived at an error.
# It will display all the functions called before the error arrived called the "call stack" in many 
# languages, R favors calling traceback.

function_1 <- function(a){ 
  a + 5
} 
# Function 2 
function_2 <- function(b) { 
  function_1(b) 
} 
function_2("s") 
# Call traceback() 
traceback()

# browser() function is inserted into functions to open R interactive debugger. It will stop the 
# execution of function() and you can examine the function with the environment of itself. In debug mode, 
# we can modify objects, look at the objects in the current environment, and also continue executing.
function(a){
  browser()
  a+5
}

# recover() statement is used as an error handler and not like the direct statement. In recover(),
# R prints the whole call stack and lets you select which function browser you would like to enter. 
# Then debugging session starts at the selected location.

# Calling recover 
options(error = recover) 
function_1 <- function(a){ 
  a + 5
} 
function_2 <- function(b) { 
  function_1(b) 
} 
function_2("s") 
