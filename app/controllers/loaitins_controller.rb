class LoaitinsController < ApplicationController
  def index
    @loaitin = Loaitin.all
  end

  def new
    @loaitin = Loaitin.new
    @theloai = Theloai.all
  end

  def create
    loaitin = Loaitin.create(loaitin_params)

    redirect_to loaitins_path
  end

  def edit
    @loaitin = Loaitin.find(params[:id])
  end

  def update
    @loaitin = Loaitin.find(params[:id]) 
    @loaitin.update(loaitin_params)

    redirect_to loaitins_path(@loaitin)
  end
  
  def destroy
    @loaitin = Loaitin.find(params[:id]) 
    @loaitin.destroy

    redirect_to loaitins_path
  end

  private
  def loaitin_params
    params.require(:loaitin).permit(:tenLoaiTin, :theloais_id)
  end
end
