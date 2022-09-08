class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototypes = Prototype.includes(:user).where('prototypes.user_id = ?', @user.id)
  end
end
