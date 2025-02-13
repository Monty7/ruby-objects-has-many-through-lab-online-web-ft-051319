require 'pry'
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
  
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    Appointment.all.select do |selection|
      #binding.pry
      selection.patient == self
    end
  end
  
  def doctors
    self.appointments.collect do |appointment|
    #binding.pry
      appointment.doctor
    end
  end
  
end