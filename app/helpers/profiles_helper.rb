module ProfilesHelper
  def my_friends
    c = []
    Friend.where("(user_id =? OR reciever_id=? ) AND relationship = true",@profile.id,@profile.id).each do |b|
      b.user_id != @profile.id ? c << b.user_id : c << b.reciever_id
    end
    Profile.where(id: c)
  end
end
