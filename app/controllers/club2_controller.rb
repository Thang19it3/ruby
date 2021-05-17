class Club2Controller < ApplicationController
  def new
    @member = Member.new
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    end
    if session[:doibong_id]
      @doibong = Doibong.find_by(id: session[:doibong_id])
    end
  end
  def create 
    member = Member.create(tv_params)
    redirect_to club3_new_path
  end
  private
  def tv_params
    params.require(:member).permit(:tenTv, :chucVu, :sdt, :id_user, :doibongs_id )
  end
end
