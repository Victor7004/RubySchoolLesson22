# Для чтения всего содержимого файла можно использовать метод File.read.
# Например:

f = File.new("test.txt", "w+")
f.puts("a line of text")
f.puts("another line of text")
f.close

puts File.read("test.txt")

# выведет:
# a line of text
# another line of text
