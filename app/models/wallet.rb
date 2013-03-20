class Wallet < ActiveRecord::Base
  attr_accessible :balance, :user_id
  belongs_to :user
  
  #before_validation :set_balance, on: :create
  #validates :balance, numericality: {greater_than_or_equal_to: 100}
  
  private

    def set_balance
      balance ||= 10000
    end

end