class Friend < ActiveRecord::Base
  belongs_to :user
  belongs_to :reciever, class_name: "user"
end
