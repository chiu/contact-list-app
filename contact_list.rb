require_relative 'contact'
require_relative 'contact_database'
require 'pry'




print 'enter the keyword help for the help menu: ' 

user_input = 'new'

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


  current_contact = Contact.new(0, user_input_name,  user_input_email)
  puts current_contact.inspect


else
  puts 'You just making it up!'
end



current_contact_id_wow = ContactDatabase.read_contact_id
ContactDatabase.csv_add_contact(current_contact, current_contact_id_wow)
ContactDatabase.write_contact_id(current_contact_id_wow+1)




