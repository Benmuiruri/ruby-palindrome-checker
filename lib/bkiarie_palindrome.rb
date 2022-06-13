# frozen_string_literal: true

require_relative "bkiarie_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  def letters
    self.chars.select { |c| c.match(/[a-z]/i) }.join
  end

  private

  def processed_content
    self.letters.downcase
  end
end
