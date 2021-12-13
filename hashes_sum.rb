#
t = {a:1, b:2, c:3, d:4}
res = 0
t.each {|x, y| res += y if y%2 != 0 }
puts res

#Выведет: 
#4
