class PigLatinizer
    attr_reader :text
    def piglatinize(text)
        text.split(" ").map {|word| piglatinize_word(word)}.join(" ")
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            vowel_index = word.index(/[aAeEiIoOuU]/)
            consonant = word.slice(0..vowel_index-1)
            left = word.slice(vowel_index..word.length)
            left + consonant + "ay"
        end
    end

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end
end