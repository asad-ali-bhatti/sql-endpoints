# frozen_string_literal: true

json.extract! endpoint, :id, :created_at, :updated_at
json.url endpoint_url(endpoint, format: :json)
