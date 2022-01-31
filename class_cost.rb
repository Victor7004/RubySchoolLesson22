# Напишите класс Cost, который должен иметь свойства rub и cop. При этом мы должны иметь возможность перемножить два объекта класса Cost,
# и получить при этом в результате перемноженные свойства rub и cop этих объектов. Для решения читайте предыдущий шаг.
class Cost
    attr_accessor :rub, :cop
    def initialize(rub, cop)
        self.rub = rub
        self.cop = cop
         
    end
    def *(other)
       Cost.new(self.rub * other.rub, self.cop * other.cop) 
    end
end
