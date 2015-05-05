## TODO: Implement CSV reading/writing
require 'csv'


class ContactDatabase

  class << self

    def open_file
      fname = "contact_list.txt"
      somefile = File.open(fname, "w")
      somefile.puts "Hello file!"
      somefile.close
    end


    def add_contact(current_contact)
      fname = "contact_list.txt"
      somefile = File.open(fname, "w")
      somefile.puts "contact: #{current_contact.inspect}"
      somefile.close
    end

    def csv_add_contact(current_contact)

      CSV.open('our-new-customers-file.csv', 'a') do |csv_object|
        

        #string_needed = current_contact.inspect
        csv_object << ['chris', 'chris@gmail.com']
        csv_object <<  [current_contact.name, current_contact.email]
        #csv_object << ['44','66']
        
      
      end
    end


  end


end



