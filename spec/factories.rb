FactoryGirl.define do 
factory :user1 do
  email: 'example@example.ru'
  password: '123456789' 
  password_confirmation: '123456789'
  role: 'user'
end

factory :user2 do
  email: 'example@example.ru'
  password: '123456789' 
  password_confirmation: '123456789'
  role: 'admin'
end

factory :event1 do
  title: 'Bits#50'
  minbits: 120
  status: 'suspense'
end

factory :event2 do
  title: 'Bits#51'
  minbits: 120
  status: 'loss'
end

factory :event3 do
  title: 'Bits#52'
  minbits: 120
  status: 'win'
end



end
