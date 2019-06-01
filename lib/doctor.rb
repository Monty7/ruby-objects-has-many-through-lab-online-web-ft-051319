class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @@all << @name = name
  end
end