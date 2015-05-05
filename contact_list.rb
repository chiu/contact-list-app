require_relative 'contact'
require_relative 'contact_database'






print 'enter the keyword help for the help menu: ' 


#user_input = gets.chomp.downcase
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
  current_contact = Contact.new(77, 'maxwell Smith',  'maxgmail.com')
  puts current_contact.inspect

  puts trial_contact = Contact.create("adam smith", "adam@gmail.com").inspect
 #puts trial_contact.print_contact_array
 puts "test"
 Contact.print_contact_array
 puts "test"
# puts Contact.contact_array.inspect
  #puts Contact.contact_array
  puts Contact.get_contact_array.inspect

else
  puts 'You just making it up!'
end


#puts current_contact.@@contact_array.inspect

