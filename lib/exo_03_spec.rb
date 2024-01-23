require_relative 'exo_03.rb'

describe "iscapitalized" do
    it "dis quand il faut acheter et quand il faut revendre" do
    expect(achatrevente([3,15,13,5,12,4,1,17,32,2,12,4,30])).to eq([7, 9])
    expect(achatrevente([3,25,13,5,12,4,1,17,12,2,12,4,19])).to eq([1, 2])
    expect(achatrevente([3,15,13,5,12,4,1,17,32,2,12,2,100])).to eq([7, 13])
    expect(achatrevente([3,90,13,5,12,4,1,89,32,2,12,4,30])).to eq([7, 8])
  end
end