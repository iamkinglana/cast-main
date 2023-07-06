class LikesController < ApplicationController
  # before_action :authenticate_user!

  def create
    @cast = Cast.find(params[:cast_id])
    like = @cast.likes.build(user: current_user)

    if like.save
      head :created
    else
      head :unprocessable_entity
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    head :no_content
  end


end
