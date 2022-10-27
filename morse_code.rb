def decode_char(character)
    code_morse = { A: '.-', B: '-...', C: '-.-.', D: '-..', E: '.', F: '..-.', G: '--.', H: '....', I: '..', J: '.---', K: '-.-', L: '.-..', M: '--', N: '-.', O: '---', P: '.--.', Q: '--.-', R: '.-.', S: '...', T: '-', U: '..-', V: '...-', W: '.--', X: '-..-', Y: '-.--', Z: '--..' }
    code_morse.each do |key, value|
        next unless value == character
        print(key)
        return key
    end

    def decode_word(word)
        word_array = word.split
        result = ''
        word_array.each do |i|
            result += decode_char(i).to_s
        end
        result
    end

