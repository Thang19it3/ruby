class Taoclub1Controller < ApplicationController
  def new
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
      @doibong = Doibong.new
    end
  end
  def create
    doibong = Doibong.create(club_params)

    redirect_to doibongs_path
  end
  private
  def club_params
    params.require(:doibong).permit(:tenDoiBong, :tenVietTat, :date, :id_user, :khauHieu ,:image  )
  end
end
