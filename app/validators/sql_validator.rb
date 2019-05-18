# frozen_string_literal: true

class SqlValidator < ActiveModel::Validator
  def validate(record)
    unless SQL::ReadOnlyValidator.new.valid?(record.sql_statement)
      record.errors[:sql_statement] << 'query is not a readonly query'
    end
  end
end
