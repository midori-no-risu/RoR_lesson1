array = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202,
         574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]
# узнать количество элементов в массиве
puts "array length  #{array.length}"

# перевернуть массив
puts "array reverse  #{array.reverse}"

# найти наибольшее число
puts "array max  #{array.max}"

# найти наименьшее число
puts "array min  #{array.min}"

# отсортировать от меньшего к большему
puts "array sort from smallest  #{array.sort}"

# отсортировать от большего к меньшему
puts "array sort from largest  #{array.sort.reverse }"

# удалить все нечетные числа
puts "array show even  #{array.select { |num|  num.even?  } }"

# оставить только те числа, которые без остатка делятся на 3
puts "elements that can be divided into 3 #{array.select {|a| a%3 == 0} }"

# удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)
puts "unique elements #{array.uniq}"

# разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого
puts "elements divided into 10 (float) #{array.map { |a| a.to_f/10 }}"

# получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем
# массиве
alphabet = Hash[[*[*'a'..'z'].map.with_index]]
alph_nums = alphabet.values
coinsiding_nums = alph_nums & array
selected_letters = []
  coinsiding_nums.each {|x|
    selected_letters.push( alphabet.select{|key, hash| hash == x })
  }

puts "зроби то не знаю що #{selected_letters}"

# поменять местами минимальный и максимальный элементы массива
clone_array = array.clone
clone_array[array.index(array.min)] = array.max
clone_array[array.index(array.max)] = array.min
puts "switch max and min elements  #{clone_array}"

# найти элементы, которые находятся перед минимальным числом в массиве
puts "elements before min number #{array[0, array.index(array.min)]}"

# необходимо найти три наименьших элемента
puts "array 3 smallest  #{array.sort.first(3) }"


puts "array still unchanged #{array} :)"

