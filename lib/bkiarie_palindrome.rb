# frozen_string_literal: true

require_relative "bkiarie_palindrome/version"

# Gem functionality
module BkiariePalindrome
  VERSION = "0.2.0"

  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
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
