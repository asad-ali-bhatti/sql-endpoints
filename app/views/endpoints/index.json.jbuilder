# frozen_string_literal: true

json.array! @endpoints, partial: 'endpoints/endpoint', as: :endpoint
