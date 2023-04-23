# frozen_string_literal: true

json.extract! niko, :id, :user_id, :mood, :date, :comment, :created_at, :updated_at
json.url api_v1_niko_url(niko, format: :json)
