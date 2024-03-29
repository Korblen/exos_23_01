# frozen_string_literal: true

def array_check_words
  dictionary = %w[the of and to a in for is on that by this with i you
                  it not or be are]
  repertoire = []
  File.open('shakespeare.txt', 'r') do |file|
    file.each_line do |line|
      words = line.split(' ')
      words.each do |word|
        repertoire << word
      end
    end
  end
  compteur = 0
  repertoire.each do |element|
    dictionary.each do |bordel|
      compteur += 1 if element.to_s.downcase == bordel.to_s.downcase
    end
  end
  compteur.to_i
end

v = array_check_words

puts "il y'a #{v} occurences de ces mots la."

def check_gromo_lol
  bible = []
  File.open('banwords.txt', 'r') do |file|
    file.each_line do |line|
      banwords = line
      bible << banwords
    end
  end
  repertoire = []
  File.open('shakespeare.txt', 'r') do |file|
    file.each_line do |line|
      words = line
      repertoire << words
    end
  end
  compteur = 0
  repertoire.each do |element|
    bible.each do |verset|
      compteur += 1 if element.to_s.include?(verset.to_s)
    end
  end
  compteur
end

bordel_de_merde = check_gromo_lol
puts "il y'a #{bordel_de_merde} gros mots (lol)"
