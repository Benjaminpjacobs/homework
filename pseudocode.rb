#Set a quit variable to equal false
#Print "HELLO, THIS IS A GROCERY STORE!" to the screen
#Prompt the user for input and set the response to a variable
#Initiate a loop that looks for the quit variable to equal true
  #Compare user input variable to a series of possibilities
  #If the string is equivalent to an empty string
    #Respond with  "HELLO!?"
    #Prompt the user for input and set the response to the user-input variable
  #If the string is equivalent to an ALL CAPS version of the same string
    #Respond with "NO, THIS IS NOT A PET STORE"
    #Prompt the user for input and set the response to the user-input variable
  #If the string is not equivalent to an ALL CAPS version of the same string
    #Respond with "I'M HAVING A HARD TIME HEARING YOU"
    #Prompt the user for input and set the response to the user-input variable
  #If the string is equivalent to the string "GOODBY!"
    #Respond with "ANYTHING ELSE I CAN HELP YOU WITH?"
    #Prompt the user for input and set the response to the user-input variable
      #If the subsequent response is also equivalent to "GOODBYE!"
        #The quite variable changes value, exiting the loop
      #Otherwise return to the comparisons
