# Давайте создадим программу, которая будет считать время выполнения блока кода.
# Определим метод, который принимает proc в качестве параметра и подсчитывает время выполнения proc:

def calc(proc)
  start = Time.now
  proc.call
  dur = Time.now - start
end
Давайте посмотрим как это работает:

someProc = Proc.new do
  num = 0
  1000000.times do
    num = num + 1
  end
end

puts calc(someProc)
