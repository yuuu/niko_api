# frozen_string_literal: true

json.extract! niko, :id, :user_id, :mood, :date, :comment
json.createdAt niko.created_at
json.dummy niko.updated_at
