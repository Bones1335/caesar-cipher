def caesar_cipher(phrase, shift=1)
    alphabet = ("A".."z").to_a #make array variable relating to all letters of alphabet capital and lower cases
    caesar = "" 

    phrase.each_char do |letter|
        if letter == " "
            caesar += " "
        else
            old_idx = alphabet.find_index(letter)
            new_idx = ( old_idx + shift ) % alphabet.count
            caesar += alphabet[new_idx]
        end
    end
    caesar
end