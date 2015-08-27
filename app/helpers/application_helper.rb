module ApplicationHelper
  def friend?(user)
    Friend.where(user_id: user.id, reciever_id: current_user, relationship: nil).first
  end
end
