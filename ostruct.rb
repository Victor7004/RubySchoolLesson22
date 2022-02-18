# Чтобы использовать OStruct, необходимо включить соответствующую библиотеку, используя оператор require.

require "ostruct"

person = OpenStruct.new
person.name = "John"
person.age = 42
person.salary = 250

puts person.name  # John
