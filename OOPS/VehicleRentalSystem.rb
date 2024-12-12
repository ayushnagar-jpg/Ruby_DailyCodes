class Vehicle
  def calculate_rent(days)
    begin
      raise NotImplementedError, "Subclass must implement area method."
      rescue NotImplementedError =>e  
        puts e.message 
      end
    end
  end
 

  class Car < Vehicle
    def calculate_rent(days)
      20*days
     end
   end
  
   class Bike < Vehicle
    def calculate_rent(days)
      10*days
     end
    end
  
car = Car.new
car_rent = car.calculate_rent(5)
puts "Car Rental Cost for 5 days: $#{car_rent}" 


bike = Bike.new
bike_rent = bike.calculate_rent(7)
puts "Bike Rental Cost for 7 days: $#{bike_rent}" 
