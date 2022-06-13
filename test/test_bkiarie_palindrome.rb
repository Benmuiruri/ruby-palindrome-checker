# frozen_string_literal: true

require "test_helper"

class TestBkiariePalindrome < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::BkiariePalindrome::VERSION
  end

  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "racEcaR".palindrome?
  end

  def test_palindrome_with_punctionation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_letters
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  end
end
