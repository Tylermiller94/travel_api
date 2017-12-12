FactoryBot.define do
  factory :destination do
    city 'Seattle'
    country 'USA'
  end

  factory(:user) do
    name 'Mark'
    email 'mark@gmail.com'
    username 'otterlover87'
  end

  factory :review do
    author 'Mark'
    content 'Seattle is okay...'
    destination
    user
    rating 3
  end
end
