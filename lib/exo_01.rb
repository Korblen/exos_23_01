# frozen_string_literal: true

def multiple_3_5(a)
  return true if (a % 5).zero? || (a % 3).zero?

  false
end

def somme3_5(a)
  array = []
  (1..a - 1).each do |i|
    array << i.to_i if multiple_3_5(i) == true
  end
  array.sum
end

puts 'choisis un nombre'
print '>'
nombre = gets.chomp.to_i
v = somme3_5(nombre)
puts v
