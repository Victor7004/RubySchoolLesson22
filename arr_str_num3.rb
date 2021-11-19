#мое решение :
n1 = gets.to_i
n2 = gets.to_i
n3 = gets.to_i
str = gets
a = []
a.push(str)
a.push(n1,n2,n3)
puts a[1]
print a

# решение через for :
a = []
for _ in 0...3 do a << gets.to_i end
a.insert(0,gets)
puts a[1]
print a
