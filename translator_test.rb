require 'minitest/autorun'
require 'minitest/pride'
require './translator'

class TranslatorTest < Minitest::Test
  def test_it_can_translate_word_starting_with_consonant_to_pig_latin
    input = 'pig'
    actual = Translator.to_pig_latin(input)
    expected = 'igpay'

    assert_equal actual, expected
  end

  def test_it_can_translate_word_starting_with_vowel_to_pig_latin
    input = 'arrow'
    actual = Translator.to_pig_latin(input)
    expected = 'arrowway'

    assert_equal actual, expected
  end

  def test_it_can_translate_multiple_words_to_pig_latin
    input = 'pig arrow latin'
    actual = Translator.to_pig_latin(input)
    expected = 'igpay arrowway atinlay'

    assert_equal actual, expected
  end

  def test_it_can_translate_word_with_upper_case_chars_to_pig_latin
    input = 'pIg ArroW LatIN'
    actual = Translator.to_pig_latin(input)
    expected = 'igpay arrowway atinlay'

    assert_equal actual, expected
  end
end
