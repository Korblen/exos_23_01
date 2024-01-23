# frozen_string_literal: true

def achatrevente(array)
  taille = array.length - 1
  max = 0
  indexmax = 0
  indexmin = 0
  (0..taille).each do |i|
    ((i + 1)..taille).each do |p|
      next unless array[p] - array[i] > max

      max = array[p] - array[i]
      indexmax = p + 1
      indexmin = i + 1
    end
  end
  [indexmin, indexmax]
end
