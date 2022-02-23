# Proc очень похожи на методы. Они выполняют операции и могут включать параметры.
# Что делает Proc по-настоящему мощным и уникальным, так это способность передавать их в методы, потому что Proc на самом деле являются объектами

greet = Proc.new do |x|
  puts "Welcome #{x}"
end

goodbye = Proc.new do |x|
  puts "Goodbye #{x}"
end

def say(arr, proc)
  arr.each { |x| proc.call x}
end 
  
people = ["David", "Amy", "John"]
say(people, greet)
say(people, goodbye)  
