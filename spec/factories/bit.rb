FactoryGirl.define  do  
  factory :bit do 
      payed false
      sum 200
      factory bit_with_event do
        after_create do |bit|
          create(:event, bit: bit)
        end 
      end   
  end
end
    