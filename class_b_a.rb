# Что выведет следующий код:

class A
  def foo
      puts "1"
  end
end
class B < A
    def foo
        puts "2"
    end
end
ob = B.new
ob.foo 
# 2
