class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :users_roles
  has_many :roles, :through => :users_roles
  has_many :bits, dependent: :destroy
  has_one :wallet
  # Setup accessible (or protected) attributes for your model
  attr_accessible :wallet_id, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
    #before_create :create_role
    #ROLES=%w[admin user]
    def sum_pay
      bits.sum{|i| 
        if i.payed==false 
          i.sum 
        else 0
      end}  
    end

    def sum_bits
      bits.sum{|i| 
          i.sum 
          }  
    end
    
    def price
      bits.map!{|i| 
        i.payed=true 
        i.save}  
    end
    
    def self.profit
      x=0
      User.all.each do |user|
        x= x + user.sum_bits
      end
      x
    end
    
    def my_win
      x=0
      bits.all.each do |bit|
        if bit.event.status == 'win'
          x=x+bit.sum
        end  
      end
      x  
    end      
    
    def user_profit
      x=0
      bits.all.each do |i| 
        if i.event.status == 'win' 
        x = x + i.sum  
        end 
      end
      x/User.profit
    end
  
    def self.add_balance
      User.all.map! do |user|
      user.wallet.balance = user.wallet.balance + user.my_win + user.my_win* user.user_profit
      user.wallet.save
      #puts user.wallet.balance
      end
    end

  #private
    #def create_role
      #self.roles << Role.find_by_name(:user)  
      #self.role = 'user'
    #end
end
