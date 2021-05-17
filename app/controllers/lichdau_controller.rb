class LichdauController < ApplicationController
  def index
    @doibong = Doibong.all
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    @trandau = Trandau.all
  end
  def edit
    @trandau = Trandau.find(params[:id])
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end

  def update
    @lichdau = Trandau.find(params[:id]) 
    @lichdau.update(lichdau_params)

    redirect_to lichdau_path(@lichdau)
  end

  private
  def lichdau_params
    params.require(:lichdau).permit(:confirm)
  end
end
