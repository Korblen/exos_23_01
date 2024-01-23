# frozen_string_literal: true

require_relative 'exo_02'

describe 'iscapitalized' do
  it 'vérifie si la lettre est maj' do
    expect(iscapitalized('A')).to eq(true)
  end
end

describe 'crypte un message' do
  it "calcule la somme des nombres multiples de 3 ou de 5 jusqu'a un point" do
    expect(crypte('je m\'appelle Malo !!', 7)).to eq("ql t'hwwlssl Thsv !!")
    # expect(somme3_5(11)).to eq(33)
    # expect(somme3_5(3)).to eq(0)
    # expect(somme3_5(0)).to eq(0)
  end
end
