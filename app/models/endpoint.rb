# frozen_string_literal: true

class Endpoint < ApplicationRecord
  has_many :logs, class_name: 'EndpointLog'

  validates :slug, uniqueness: true, presence: true
  validates :sql_statement, presence: true
  validates_with SqlValidator
end
