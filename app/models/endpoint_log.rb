# frozen_string_literal: true

class EndpointLog < ApplicationRecord
  belongs_to :endpoint

  scope :today, -> { where('DATE(created_at) = ?', Date.today) }
  scope :in_hours, -> (hours) { where('created_at > ? ', DateTime.now - hours.hours) }
end
