class Timtran2Controller < ApplicationController
  def index
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    @doibong = Doibong.find(params[:id])
  end
end
