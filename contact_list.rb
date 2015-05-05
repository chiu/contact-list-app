require_relative 'contact'
require_relative 'contact_database'
require 'pry'






puts "other tests for putting text file directly into array"


print 'enter the keyword help for the help menu: ' 

#user_input = 'new'
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
  current_contact = Contact.new(0, user_input_name,  user_input_email)
  current_contact_id_wow = ContactDatabase.read_contact_id
  ContactDatabase.csv_add_contact(current_contact, current_contact_id_wow)
  ContactDatabase.write_contact_id(current_contact_id_wow+1)

when 'list'
  ContactDatabase.list

when 'find'
  puts "enter name you wanna find: "
  person_name = gets.chomp
  ContactDatabase.find(person_name)

else
  puts 'You just making it up!'
end

