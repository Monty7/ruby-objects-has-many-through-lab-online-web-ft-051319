class Patient
  attr_accessor :name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient)
    Appointment.new(doctor, date)
  end
  
  def appointments
    Appointment.all.select do |selection|
      #binding.pry
      selection.patient.name == self.name
    end
  end
  
  def doctors
    
  end
  
end