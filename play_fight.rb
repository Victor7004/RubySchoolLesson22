# Объектно-ориентированное программирование очень полезно, когда речь идет о создании сложных приложений, таких как игры.
# Давайте создадим простую игру-файтинг, в которой два противника будут сражаться до тех пор, пока один из них не проиграет.
# Начнем с создания класса Player:

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
