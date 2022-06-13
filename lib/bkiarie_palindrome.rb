# frozen_string_literal: true

require_relative "bkiarie_palindrome/version"

class String
  def palindrome?
    processed_content == processed_content.reverse
  end

  def letters; end

  private

  def processed_content
    downcase
  end
end
