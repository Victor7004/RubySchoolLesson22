# Напишите класс Car, в котором реализуйте свойство экземпляра name и методы доступа (из предыдущего шага) к нему.
class Car

  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end
