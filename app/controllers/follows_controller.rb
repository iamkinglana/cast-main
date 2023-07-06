class FollowsController < ApplicationController
  # before_action :authenticate_user!

  def create
    followed_user = User.find(params[:followed_id])
    follow = current_user.follows.build(followed: followed_user)

    if follow.save
      head :created
    else
      head :unprocessable_entity
    end
  end

  def destroy
    follow = current_user.follows.find_by(followed_id: params[:followed_id])
    follow.destroy
    head :no_content
  end
end
