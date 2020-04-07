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
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end 
  
  def meals 
    Meal.all.select do |meal|
      meal.waiter == self 
    end 
  end 
end