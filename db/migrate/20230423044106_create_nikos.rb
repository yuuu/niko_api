# frozen_string_literal: true

class CreateNikos < ActiveRecord::Migration[7.0]
  def change
    create_table :nikos do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :mood
      t.date :date
      t.text :comment

      t.timestamps
    end
  end
end
