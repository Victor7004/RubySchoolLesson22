# Например, вы можете иметь несколько уровней наследования:

class Animal
end
class Mammal < Animal
end
class Dog < Mammal
end

# Здесь Dog наследуется от Mammal, который наследуется от Animal.
