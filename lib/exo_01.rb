def multiple_3_5(a)
    if a % 5 == 0 || a % 3 == 0
        return true
    else
        return false
    end
end

def somme3_5(a)
    array = []
    for i in 1 .. a - 1
        if multiple_3_5(i) == true
            array << i.to_i
        end
    end
    return array.sum
end

puts "choisis un nombre"
print ">"
nombre = gets.chomp.to_i
v = somme3_5(nombre)
puts v
