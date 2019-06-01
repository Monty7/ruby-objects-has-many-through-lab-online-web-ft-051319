class Patient
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def new_appointment(patient)
    Appointment.new(patient)
  end
  
end