ready_to_quit = false
one_goodbye = false

puts "HELLO, THIS IS A GROCERY STORE!"

until ready_to_quit
  input = gets.chomp
  if input == ''
    puts "HELLO!?"
  elsif input != input.upcase
    puts "I AM HAVING A HARD TIME HEARING YOU"
  elsif input == "GOODBYE!" &&  one_goodbye == false
    one_goodbye = true
    puts "ANYTHING ELSE I CAN HELP YOU WITH?"
  elsif input == "GOODBYE!" && one_goodbye == true
    ready_to_quit = true 
  else
    puts "NO, THIS IS NOT A PET STORE"
  end
end

puts "THANK YOU FOR CALLING!"