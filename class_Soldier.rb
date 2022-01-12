#Необходимо создать класс Soldier, в котором реализовать два метода - fight и defence. Первый метод должен выводить фразу "Urrra!" (без кавычек), второй - выводить фразу "We loose, go home!" (тоже без кавычек). Вообще кавычки используются в условии, чтобы показать, что есть некая фраза, которую нужно выводить. Выводить нужно ВСЕГДА без кавычек.
#После этого создайте экземпляр класса Soldier и вызовите на нем первый и второй методы.

class Soldier
    def fight
        puts"Urrra!"
    end
    def defence
        puts"We loose, go home!"
    end
end
rain = Soldier.new
rain.fight
rain.defence

# Выведет
# Urrra!
# We loose go home!
