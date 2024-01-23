# frozen_string_literal: true

def iscapitalized(a)
  return true if a == a.upcase

  false
end

def crypte(a, b)
  p = a.split(' ')
  n = []
  p.each do |element|
    virendo = element.length - 1
    prouter = ''
    (0..virendo).each do |i|
      variable = 0
      if element[i].ord.to_i < 123 && element[i].ord.to_i > 96 || element[i].ord.to_i < 91 && element[i].ord.to_i > 64
        variable = 1 if iscapitalized(element[i]) == true
        vriller = element[i].downcase.to_s.ord
        vriller = (vriller - 97)
        # on est a la position dans l'alphabet
        vriller = (vriller + b) % 26
        vriller += 97
        vriller = vriller.chr
        vriller = vriller.upcase if variable == 1
        prouter += vriller
      else
        prouter += element[i]
      end
    end
    n << prouter
  end
  n.join(' ')
end

puts 'entrez votre message'
print '>'
message = gets.chomp.to_s
puts 'entrez la clé'
print '>'
nombre = gets.chomp.to_i
bordel_de_merde = crypte(message, nombre)
puts bordel_de_merde
