# Есть модуль Vehicle, в котором есть классы Car и Bus. Ваша задача создать объекты классов с именами Nissan и Laz соответственно.
module Vehicle
    class Car             
          attr_accessor :name
          def initialize
              self.name 
              #self.age = a
          end
        def name
            :name 
         end 
     end 
      class Bus
           attr_accessor :name
           def initialize
               self.name 
           end
           def name
             :name 
           end 
       end 
 end
Nissan = Vehicle::Car.new
Laz = Vehicle::Bus.new

# Верное решение #459329149


Nissan = Vehicle::Car.new
Laz = Vehicle::Bus.new
