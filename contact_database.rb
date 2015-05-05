## TODO: Implement CSV reading/writing
require 'csv'
# require 'ftools'
require "fileutils"
# require 'ftools'
class ContactDatabase

  @@contact_array = []

  class << self

    #most important method
    def load_from_csv_into_array
      puts "test begin"
      customers = CSV.read('touch-contacts.csv')
      array_result = []
      CSV.foreach('touch-contacts.csv') do |contact|
        primary_key = contact[0]
        name = contact[1]
        email = contact[2]
        new_contact = Contact.create(primary_key, name, email)
        # array_result << new_contact
        #puts new_contact.inspect
      end
      # return array_result
    end
    #end most important method

    def wipe_clean_file
      CSV.open('touch-contact.csv', 'w') do |csv_object|
        csv_object <<  [nil]
      end
    end


    def seed_file
      FileUtils.copy_file('seed-touch-contacts.csv' , 'touch-contacts.csv' , false,  true)
    end




    def csv_add_contact(current_contact, current_contact_id_wow)
      CSV.open('touch-contacts.csv', 'a') do |csv_object|
        csv_object <<  [current_contact_id_wow, current_contact.name, current_contact.email]   
      end
    end

    def list
      lines = File.open('touch-contacts.csv', "r"){ |datafile| datafile.readlines }
      lines.each{|line| puts line}
    end

    def load_array(contact_array)
      lines = File.open('touch-contacts.csv', "r"){ |datafile| datafile.readlines }
      lines.each do |line| 
        name = 1
        email = 2 
        Contact.create(name, email)
      end
    end

    def find(person_name)
      lines = File.open('touch-contacts.csv', "r"){ |datafile| datafile.readlines }
      lines.each do |line| 
        puts "found guy:" + line if line.include?(person_name)
      end
    end

    def write_contact_id(current_contact_id_wow)
      CSV.open('contact-id.csv', 'w') do |csv_object|
        csv_object <<  [current_contact_id_wow]
      end
    end



    def final_print_array
      puts @@contact_array.inspect
    end


    def read_contact_id
     lines = File.open('contact-id.csv', "r"){ |datafile| datafile.readlines }
     lines.each do |line|
       puts line 
       return line.to_i
     end
   end


 end

end






