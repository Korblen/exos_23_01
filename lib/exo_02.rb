def iscapitalized(a)
    if a == a.upcase
        return true
    else
        return false
    end
end

def crypte(a, b)
    p = a.split(" ")
    n = []
    for element in p
        virendo = element.length - 1
        prouter = ""
        for i in 0 .. virendo
            variable = 0
            if element[i].ord.to_i <123 && element[i].ord.to_i > 96 || element[i].ord.to_i < 91 && element[i].ord.to_i > 64
                if iscapitalized(element[i]) == true
                    variable = 1
                end
                vriller = element[i].downcase.to_s.ord
                vriller = (vriller - 97)
                #on est a la position dans l'alphabet
                vriller = (vriller + b) % 26
                vriller = vriller + 97
                vriller = (vriller).chr
                if variable == 1
                    vriller = vriller.upcase
                end
                prouter = prouter + vriller
            else
                prouter = prouter + element[i]
            end
        end
        n << prouter
    end
    return n.join(" ")
end

puts "entrez votre message"
print ">"
message = gets.chomp.to_s
puts "entrez la clé"
print">"
nombre = gets.chomp.to_i
bordel_de_merde = crypte(message, nombre)
puts bordel_de_merde