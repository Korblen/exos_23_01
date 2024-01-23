require_relative 'exo_01.rb'

describe "multiple 3 5" do
  it "vérifie que le nombre est multiple de 3 ou 5 ou s'il ne l'est pas" do
    expect(multiple_3_5(15)).to eq(true)
  end
end

describe "somme 3 5" do
  it "calcule la somme des nombres multiples de 3 ou de 5 jusqu'a un point" do
    expect(somme3_5(10)).to eq(23)
    expect(somme3_5(11)).to eq(33)
    expect(somme3_5(3)).to eq(0)
    expect(somme3_5(0)).to eq(0)
  end
end