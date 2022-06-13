# frozen_string_literal: true

require_relative "bkiarie_palindrome/version"

module BkiariePalindrome
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

  def processed_content
    scan(/[a-z]/i).join.downcase
  end
end

class String
  include BkiariePalindrome
end
