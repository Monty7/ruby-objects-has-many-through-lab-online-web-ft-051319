class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @@all << @name = name
  end
  
  def self.all
    @@all
  end
end