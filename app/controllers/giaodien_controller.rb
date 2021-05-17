class GiaodienController < ApplicationController
  def trangchu
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    @tintuc = Tintuc.all
  end

  def datsan
  end

  def tintuc
  end

  def doibong
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
      @doibong = Doibong.find(@user.id)
      @taodoi = @doibong.id_user
    end
    
  end

  def lienhe
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to dangnhap_path
 end
end
