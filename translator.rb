class Translator
  def self.to_pig_latin(input)
    words = input.downcase.split(' ')
    words.map do |word|
      convert_to_pig_latin(word)
    end.join(' ')
  end

  private

  def self.convert_to_pig_latin(word)
    first_letter = word[0]
    remaining_letters = word[1..-1]
    if is_vowel?(first_letter)
      word + 'way'
    else
      remaining_letters + first_letter + 'ay'
    end
  end

  def self.is_vowel?(letter)
    %w(a e i o u).include?(letter)
  end
end
