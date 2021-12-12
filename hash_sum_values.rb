# Дан хэш hash.
#Вам нужно написать код, который посчитает сумму всех нечетных значений этого хэша и затем выведет эту сумму.
# Эталонный вариант
sum = 0
hash.each do |k, v|
  sum += v
end
puts sum

# а еще: puts a.values.sum
hash = {a:100, b:50, c:3, d:5}
puts hash.values.sum

#Мой вариант
res = 0
hash.each {|x, y| res += y if y%2 != 0 }
puts res
