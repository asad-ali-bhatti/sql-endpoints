# frozen_string_literal: true

module SQL
  class ReadOnlyValidator
    INVALID_KEYWORDS = %w[drop delete table alter].freeze

    def valid?(str)
      # if any keyword is matched with invalid
      # keyword then string is invalid

      str.downcase.split(' ').select do |keyword|
        INVALID_KEYWORDS.include? keyword
      end.empty?
    end
  end
end
