# Мы можем определить свой собственный метод to_s для класса и добавить к нему пользовательскую реализацию.
# Например, мы можем сгенерировать информативный, отформатированный вывод для нашего класса Person:

class Person
  def initialize(n, a)
    @name = n
    @age = a
  end
  def to_s
    "#{@name} is #{@age} years old."
  end
end
p = Person.new("David", 28)
puts p
# выведет: "David is 28 years old."
