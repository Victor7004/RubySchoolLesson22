# Необходимо создать модуль Fire. В нем определить метод firearms, который должен выводить фразу "It is firearm weapon!".

# Также создаем еще один модуль под названием Cold. И в нем метод cold_steel, который должен выводить фразу "It is cold steel weapon!".

# Далее создаем класс Weapon. В нем пишем метод define, который должен выводить фразу "It is a weapon!".

# После этого создаем классы Knife, Bow, Gun, Rifle, которые наследуют класс Weapon. При этом классы Knife и Bow должны включать модуль Cold, а классы Gun и Rifle - модуль Fire.

Всё! Больше ничего делать не надо
module Fireable
    def firearms
        puts "It is firearm weapon!"
    end
end
module Coldable
    def cold_steel
       puts "It is cold steel weapon!"
    end
end
class Weapon
    def define
        puts "It is a weapon!"
    end
end
class Knife < Weapon
    include Coldable
end
class Bow < Weapon
    include Coldable
end
class Gun < Weapon
    include Fireable
end 
class Rifle < Weapon
    include Fireable
end
