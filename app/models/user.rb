class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :users_roles
  has_many :roles, :through => :users_roles
  has_many :bits, dependent: :destroy
  has_one :wallets
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
    before_create :create_role
    ROLES=%w[admin user]
    def sum_pay
      bits.sum{|i| 
        if i.payed==false 
          i.sum 
        else 0
      end}  
    end
    
    def price
      bits.map!{|i| 
        i.payed=true 
        i.save}  
    end

  

  private
    def create_role
      self.roles << Role.find_by_name(:user)  
    end
end
