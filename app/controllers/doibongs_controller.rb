class DoibongsController < ApplicationController
  def index
    @doibong = Doibong.all
  end

  def new
    @doibong = Doibong.new
  end

  def edit
    @doibong = Doibong.find(params[:id])
  end

  def update
    @doibong = Doibong.find(params[:id]) 
    @doibong.update(club_params)

    redirect_to doibongs_path(@doibong)
  end

  def create
    doibong = Doibong.create(club_params)
    session[:doibong_id] = doibong.id
    redirect_to 'http://127.0.0.1:3000/club2'
  end
  def destroy
    @doibong = Doibong.find(params[:id]) 
    @doibong.destroy

    redirect_to doibongs_path
  end

  private
  def club_params
    params.require(:doibong).permit(:tenDoiBong, :tenVietTat, :khauHieu, :date, :image ,:id_user )
  end
end
