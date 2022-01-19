# Мы можем, например, вести счет всех созданных объектов Person с помощью переменной класса:

class Person
  @@count = 0
  def initialize
    @@count += 1
  end
  def self.get_count
    @@count
  end
end

p1 = Person.new
p2 = Person.new

puts Person.get_count
# выведет 2
