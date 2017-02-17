require 'minitest/autorun'
require 'minitest/pride'
require './translator'

class TranslatorTest < Minitest::Test
  def test_it_can_translate_word_starting_with_consonant_to_pig_latin
    actual = Translator.to_pig_latin('pig')
    expected = 'igpay'

    assert_equal actual, expected
  end
end
