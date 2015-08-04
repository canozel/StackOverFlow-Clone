class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :questions
  has_one :profile

  after_create :make_profile, on: :create 
    
  def make_profile
    create_profile(
      first_name: "",
      last_name: "",
      phone: ""
    )
  end
end
