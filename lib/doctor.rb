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
    Appointment.all.select do |selection|
      #binding.pry
      selection.doctor.name == self.name
    end
  end
  
  def patients
    Appointment.all.select do |patients|
      binding.pry
      patients == self.appointments
    end
  end
end