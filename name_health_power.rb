# Объектно-ориентированное программирование очень полезно, когда речь идет о создании сложных приложений, таких как игры.
# Давайте создадим простую игру-файтинг, в которой два противника будут сражаться до тех пор, пока один из них не проиграет.
class Player
  attr_accessor :name, :health, :power
  def initialize(n, h, pow)
    @name = n
    @health = h
    @power = pow
  end
  def isAlive
    @health > 0
  end
  def hit(opponent)
    opponent.health -= self.power
  end
  def to_s
    "#{name}: Health: #{health}, Power: #{power}"
  end
end

def fight(p1, p2)
  while p1.isAlive && p2.isAlive
    p1.hit(p2)
    p2.hit(p1)      
    show_info(p1, p2)
  end

  if p1.isAlive 
    puts "#{p1.name} WON!" 
  elsif p2.isAlive
    puts "#{p2.name} WON!" 
  else
    puts "TIE!"
  end
end

def show_info(*p)
  p.each { |x| puts x}
end

#initialize Players
puts "PLAYERS INFO"
p1 = Player.new("Player 1", 1+rand(100), 1+rand(20))
p2 = Player.new("Player 2", 1+rand(100), 1+rand(20))

#show Player info
show_info(p1, p2)

puts "LETS FIGHT!"
fight(p1, p2)

# Вывод:
# PLAYERS INFO
# Player 1: Health: 78, Power: 3
# Player 2: Health: 89, Power: 3
# LETS FIGHT!
# Player 1: Health: 75, Power: 3
# Player 2: Health: 86, Power: 3
# Player 1: Health: 72, Power: 3
# Player 2: Health: 83, Power: 3
# Player 1: Health: 69, Power: 3
# Player 2: Health: 80, Power: 3
# Player 1: Health: 66, Power: 3
# Player 2: Health: 77, Power: 3
# Player 1: Health: 63, Power: 3
#Player 2: Health: 74, Power: 3
# Player 1: Health: 60, Power: 3
# Player 2: Health: 71, Power: 3
# Player 1: Health: 57, Power: 3
# Player 2: Health: 68, Power: 3
# Player 1: Health: 54, Power: 3
# Player 2: Health: 65, Power: 3
# Player 1: Health: 51, Power: 3
# Player 2: Health: 62, Power: 3
# Player 1: Health: 48, Power: 3
# Player 2: Health: 59, Power: 3
# Player 1: Health: 45, Power: 3
# Player 2: Health: 56, Power: 3
# Player 1: Health: 42, Power: 3
# Player 2: Health: 53, Power: 3
# Player 1: Health: 39, Power: 3
# Player 2: Health: 50, Power: 3
# Player 1: Health: 36, Power: 3
# Player 2: Health: 47, Power: 3
# Player 1: Health: 33, Power: 3
# Player 2: Health: 44, Power: 3
# Player 1: Health: 30, Power: 3
# Player 2: Health: 41, Power: 3
# Player 1: Health: 27, Power: 3
# Player 2: Health: 38, Power: 3
# Player 1: Health: 24, Power: 3
# Player 2: Health: 35, Power: 3
# Player 1: Health: 21, Power: 3
# Player 2: Health: 32, Power: 3
# Player 1: Health: 18, Power: 3
# Player 2: Health: 29, Power: 3
# Player 1: Health: 15, Power: 3
# Player 2: Health: 26, Power: 3
# Player 1: Health: 12, Power: 3
# Player 2: Health: 23, Power: 3
# Player 1: Health: 9, Power: 3
# Player 2: Health: 20, Power: 3
# Player 1: Health: 6, Power: 3
# Player 2: Health: 17, Power: 3
# Player 1: Health: 3, Power: 3
# Player 2: Health: 14, Power: 3
# Player 1: Health: 0, Power: 3
# Player 2: Health: 11, Power: 3
# Player 2 WON!
