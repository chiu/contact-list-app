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
      end
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


  end


end








