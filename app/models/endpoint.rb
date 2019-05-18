# frozen_string_literal: true

class Endpoint < ApplicationRecord
  has_many :logs, class_name: 'EndpointLog'
end
