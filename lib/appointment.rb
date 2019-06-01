class Appointment
  
  attr_accessor :date, :patient, :doctor
  @@all = []
  
  def initialize(date, patient, doctor)
    
  end
  
  def self.all 
    @@all
  end
  
end