# Необходимо создать модуль Car и модуль Truck. В обоих модулях реализовать класс Volvo. 
# В модуле Car этот класс должен содержать переменную класса wheels равную 4, а в модуле Truck этот класс должен содержать переменную класса wheels равную 6. 
# Также в каждом классе реализовать метод how_many_wheels, который будет выводить переменную класса wheels.

# После этого необходимо создать по экземпляру каждого класса (сначала Car, затем Truck). И использовать метод how_many_wheels на каждом из объектов.

module Car
    class Volvo
        @@wheels = 4
        def how_many_wheels
            puts @@wheels
        end
    end
end
module Truck    
    class Volvo
        @@wheels = 6
        def how_many_wheels
            puts @@wheels
        end
    end
end
c = Car::Volvo.new
t = Truck::Volvo.new
c.how_many_wheels
t.how_many_wheels
