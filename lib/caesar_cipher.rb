    def caesar_cipher(input, factor)
        unciphered_array = input.split("")
        ciphered_array = []

        unciphered_array.each do |char| 
             if char.upcase == char
                ciphered_array << (shift_char(char.downcase, factor)).upcase
             else
                ciphered_array << shift_char(char, factor)
            end  
        end
        ciphered_array.join("")
    end

    def shift_char(char, factor)
        alphabet = ("a".."z").to_a
        return char if !alphabet.include?(char)
        unshifted_i = alphabet.find_index(char)
        shifted_i = unshifted_i + factor
        alphabet[shifted_i % 26] 
    end
    


#    p caesar_cipher("What a string!", 5) 
#    => "Bmfy f xywnsl!"





