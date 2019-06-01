class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
   @name = name
   @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  
  def appointments
    binding.pry
    Appointment.all.select do |selection|
      binding.pry
    end
  end
end