class Niko < ApplicationRecord
  belongs_to :user

  enum mood: { good: 10, normal: 20, bad: 30 }
end
