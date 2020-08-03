require "./lib/caesar_cipher.rb"

describe "#caesar_cipher" do
    it "should take an input string and a numeric shifting factor" do
        expect(caesar_cipher("testing",0)).to eql("testing") 
    end
    it "returns a string of same length as input string" do
        expect(caesar_cipher("test string!!!", 1).length).to eql(14)
    end

    it "returns a string where each letter is shifted down the alphabet by the factor" do
        expect(caesar_cipher("a b c d", 1)).to eql("b c d e")
    end

    it "returns a string where case is preserved" do
        expect(caesar_cipher("A B c D", 1)).to eql("B C d E")
    end
    it "non-alphabet characters is preserved" do
        expect(caesar_cipher("hi!!!@#",1)).to eql("ij!!!@#")
    end

    it "letter shifts wrap from z to a" do 
        expect(caesar_cipher("xyz",3)).to eql("abc")
    end
end