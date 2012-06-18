class User < ActiveRecord::Base  
  include Enumerize

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  enumerize :role, in: %w[admin moder user guest], default: :guest

  role.values.each do |r|
    define_method "#{r}?" do
      self.role == r
    end
  end
end
