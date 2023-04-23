FactoryBot.define do
  factory :niko do
    mood { :good }
    date { '2023-04-23' }
    comment { 'hello world.' }
    user
  end
end
