class Contact

  attr_accessor :name, :email, :contact_id
  @@contact_array = []

  @@contact_id = 0

  def initialize(contact_id , name, email)
    # TODO: assign local variables to instance variables
    @contact_id = contact_id
    @name = name
    @email = email

  end

  public

  def to_s
    # TODO: return string representation of Contact
  end

  ## Class Methods
  class << self
    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
      new_contact = self.new(@@contact_id, name, email)
      @@contact_array << new_contact
      @@contact_id += 1
      return new_contact


    end

    def find(index)
      # TODO: Will find and return contact by index
    end

    def all
      # TODO: Return the list of contacts, as is
    end
    
    def show(id)
      # TODO: Show a contact, based on ID
    end

    def get_contact_array
      puts @@contact_array
      return @@contact_array

    end

    def print_contact_array
      puts @@contact_array.inspect
    end
    
  end

end