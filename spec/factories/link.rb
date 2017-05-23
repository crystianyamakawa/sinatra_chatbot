FactoryGirl.define do
  factory :link do
    description FFaker::Lorem.phrase
    url FFaker::Lorem.phrase
    posted_by FFaker::Lorem.word
    company
  end
end
