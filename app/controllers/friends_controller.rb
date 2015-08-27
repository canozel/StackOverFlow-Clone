class FriendsController < ApplicationController
  def create
    @friend = current_user.friends.new(reciever_id: params[:reciever_id])
    if @friend.save
      redirect_to profile_path(User.find(params[:reciever_id]).profile), notice: "Arkadaşlık isteği gönderildi."      
    end
  end

  def condition
    @friend = Friend.where(reciever_id: current_user, user_id: params[:user_id]).first
    @friend.update(relationship: params[:relationship])
    redirect_to :back
    
  end
end
