## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:

def check_array(numbers)
    max = numbers[0]
    min = numbers[0]
    numbers.each do |item|
      if(item.to_i > max.to_i)
              max = item;
          elsif(item.to_i < min.to_i)
              min = item
      end 
     end    
    return (max.to_i-min.to_i)
  end


arr = File.foreach("data/3.txt").map{|line| line.split('\t')} 
arr.to_a

numbers = Array[]
difference = 0

arr.each do |i|
    numbers = i 
    difference += check_array(numbers)
   
end
puts difference
