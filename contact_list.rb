require_relative 'contact'
require_relative 'contact_database'
require 'pry'




#load data from csv file
ContactDatabase.wipe_clean_file
ContactDatabase.seed_file
ContactDatabase.load_from_csv_into_array
#Contact.print_contact_array
Contact.create(0, "rex", "rex@gmail.com")
#Contact.print_contact_array



#prompt user
print 'enter the keyword help for the help menu: ' 
user_input = gets.chomp.downcase

case user_input

when 'help'
  puts 'You need help!!!'
  puts 'Here is a list of available commands:'
  puts 'new  - Create a new contact'
  puts 'list - List all contacts'
  puts  'show - Show a contact'
  puts 'find - Find a contact'

when 'new'
  puts "Time for some new stuff!"
  print "enter name: "
  user_input_name = gets.chomp
  print "enter email: "
  user_input_email = gets.chomp.downcase
  Contact.create(0, user_input_name, user_input_email)
  Contact.print_contact_array


when 'list'
  #puts Contact.all.inspect
  
  Contact.all.each do |contact|
    #puts contact.class
    #puts contact.inspect
    # print "#{contact.primary_key}: "
    # print "#{contact.name} "
    # puts "(#{contact.email})"
      puts contact.to_s
  end

when 'show'

  puts "enter primary_key of user to find user: "
   user_input_primary_key = gets.chomp.downcase
  found_flag = false
   Contact.all.each do |contact|
      if contact.primary_key == user_input_primary_key
      print "#{contact.primary_key}: "
      print "#{contact.name} "
      puts "(#{contact.email})"
      found_flag = true
   
    end

  end

  puts "user not found" if found_flag == false


  




when 'find'

  puts "enter primary_key of user to find user: "
   user_input_primary_key = gets.chomp.downcase
  found_flag = false
   Contact.all.each do |contact|
      if contact.primary_key == user_input_primary_key
      print "#{contact.primary_key}: "
      print "#{contact.name} "
      puts "(#{contact.email})"

      found_flag = true
   
    end

  end

  puts "user not found" if found_flag == false




else
 puts 'You just making it up!'
end

