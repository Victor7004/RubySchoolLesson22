# Напишите класс Dog, создайте две переменные класса - legs равная 4 и voice равная "Rrr". Реализуйте методы legs и voice для доступа к соответствующим переменным класса.
class Dog
    @@legs=4
    def self.legs
        @@legs
    end
    @@voice="Rrr"
    def self.voice
        @@voice 
    end
end
