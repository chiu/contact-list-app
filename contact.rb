class Contact

  attr_accessor :name, :email, :contact_id
  @@contact_array = []
  @@contact_id = 0



  def initialize(primary_key , name, email)
    # TODO: assign local variables to instance variables
    @primary_key = primary_key
    @name = name
    @email = email

  end

  public

  def to_s
    # TODO: return string representation of Contact
  end

  ## Class Methods
  class << self

  #  def contacts=(contacts)
  #   @@contact_array = contacts
  # end


  def create(id, name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      new_contact = self.new(id, name, email)
      @@contact_array << new_contact
      #@@contact_id += 1
      return new_contact

    end

    def find(index)
      # TODO: Will find and return contact by index
      @@contact_array.each do |contact|
        return contact if contact.primary_key == index
      end 
    end

    def all
      # TODO: Return the list of contacts, as is
      @@contact_array
    end
    
    def show(id)
      # TODO: Show a contact, based on ID
    end

    # def get_contact_array
    #   puts @@contact_array
    #   return @@contact_array

    # end

    def print_contact_array
      puts @@contact_array.inspect
    end
    
  end

end


# Contact.all
# Contact.find(5)
# Contact.contact_array

