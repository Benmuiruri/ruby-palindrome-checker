# frozen_string_literal: true

require_relative "bkiarie_palindrome/version"

module BkiariePalindrome
  VERSION = "0.2.0"
  
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  def processed_content
    to_s.scan(/[a-z1-9]/i).join.downcase
  end
end

class String
  include BkiariePalindrome
end

class Integer
  include BkiariePalindrome
end