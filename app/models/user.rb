class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :friends
  has_many :inverse_friendships,->{where(relationship: nil )},  class_name: "Friend", foreign_key: "reciever_id"

  has_many :friend_requests, through: :inverse_friendships, source: :user
  has_many :questions
  has_one :profile, dependent: :destroy

  after_create :make_profile, on: :create 
    

  def make_profile
    create_profile(
      first_name: "",
      last_name: "",
      phone: ""
    )
  end
end
#SELECT `users`.* FROM `users` 
#INNER JOIN `friends` ON `users`.`id` = `friends`.`user_id` 
#  WHERE `friends`.`reciever_id` = 1 AND `relationship` = true
