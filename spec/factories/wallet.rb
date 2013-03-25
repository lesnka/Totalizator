FactoryGirl.define  do
  factory :wallet do 
  @user=User.create(email: "admin@admin.ru", password: '12345678', password_confirmation: '12345678')
  user_id = @user.id
  end
end
