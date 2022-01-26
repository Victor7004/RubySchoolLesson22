# Создайте класс Vehicle, в котором реализуйте метод make_sound, который должен выводить строку "Boo".

# После этого создайте подкласс Car, который будет наследовать Vehicle, создайте новый экземпляр этого подкласса и вызовите на нем метод make_sound.

class Vehicle
    def make_sound 
       puts "Boo" 
    end
end
class Car < Vehicle
end     
c = Car.new
c.make_sound
