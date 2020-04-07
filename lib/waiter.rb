class Waiter
  attr_accessor :name, :yrs_expierence 
  
  @@all = []
  
  def initialize(name, yrs_expierence)
    @name = name 
    @yrs_expierence = yrs_expierence
    @@all << self 
    
  end 
  
  def self.all 
    @@all 
  end 
end