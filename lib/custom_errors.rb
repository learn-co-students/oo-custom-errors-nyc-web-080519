class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      # implementing begin and rescue
      begin
        raise PartnerError
      rescue PartnerError => error
          # prints out the message 
          puts error.message
      end
    else
      person.partner = self
    end
  end

  # defining the custom errors class
  # inherits from StandardError
  class PartnerError < StandardError
    # custom error message

    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




