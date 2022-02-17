# Все по философии языка. Язык для человека, а не для компьютера. Просто, но не слишком просто... Ну и для наглядности:

class Person

  attr_accessor :name, :surname, :age, :weight, :growth, :etc
  
  def initialize(name, surname, age, weight, growth, etc)
    @name = name
    @surname = surname
    @age = age
    @weight = weight
    @growth = growth
    @etc = etc
  end
end
# или все же:

Person = Struct.new(:name, :surname, :age, :weight, :growth, :etc)
