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

    def csv_add_contact(current_contact, current_contact_id_wow)
      CSV.open('touch-contacts.csv', 'a') do |csv_object|
        csv_object <<  [current_contact_id_wow, current_contact.name, current_contact.email]   
       
       # write_contact_id(current_contact_id_wow)
      end
    end

    def list
      lines = File.open('touch-contacts.csv', "r"){ |datafile| datafile.readlines }
      lines.each{|line| puts line}
    end


    def write_contact_id(current_contact_id_wow)
      CSV.open('contact-id.csv', 'w') do |csv_object|
        csv_object <<  [current_contact_id_wow]
      end
    end

     def read_contact_id
     lines = File.open('contact-id.csv', "r"){ |datafile| datafile.readlines }
      lines.each{|line|
       puts line 
       return line.to_i
      }
    end

  end

end

#end



