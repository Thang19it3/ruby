class TimdoithuController < ApplicationController
  def index
    @doibong = Doibong.all
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    @trandau = Trandau.all
  end
  def edit
    @doibong1 = Doibong.all
    @doibong = Doibong.find(params[:id])
    @trandau = Trandau.new
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end

  end
  def create1
    @doibong = Doibong.find(params[:id])
    @trandau = Trandau.new
    @trandau.update(trandau_params)

    redirect_to tintucs_path(@trandau)
  end

  private
  def trandau_params
    params.require(:trandau).permit(:id_db1, :id_db2, :id_user2, :id_user, :time ,:ngay ,:confirm)
  end
end
