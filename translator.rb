class Translator
  def self.to_pig_latin(input)
    Translator.new(input).to_pig_latin
  end

  attr_reader :input

  def initialize(input)
    @input = input
  end

  def to_pig_latin
    validate_input(input)
    words = input.downcase.split(' ')
    words.map { |word| convert_to_pig_latin(word) }.join(' ')
  end

  private

  def validate_input(input)
    raise TypeError, 'Only letters accepted' if input.match(/[^a-zA-Z ]/)
  end

  def convert_to_pig_latin(word)
    if is_vowel?(word[0])
      word + 'way'
    else
      word[1..-1] + word[0] + 'ay'
    end
  end

  def is_vowel?(letter)
    %w(a e i o u).include?(letter)
  end
end
