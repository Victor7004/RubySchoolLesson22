# Ruby имеет встроенный метод, называемый super, который используется для вызова методов из суперкласса.
# При вызове метода super в подклассе вызывается одноименный метод из суперкласса.
# Например:

class Animal
  def speak
    puts "Hi"
  end
end

class Cat < Animal
  def speak
    super
    puts "Meow"
  end
end

# super вызывает метод speak класса Animal.
# Теперь, если мы создадим объект класса Cat и вызовем его метод speak, то получим следующее:

c = Cat.new
c.speak

# выведет
# Hi
# Meow
