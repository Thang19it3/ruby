class TintucsController < ApplicationController
  def index
    @tintuc = Tintuc.all
  end

  def new
    @tintuc = Tintuc.new
    @loaitin = Loaitin.all
  end

  def create
    tintuc = Tintuc.create(tintuc_params)

    redirect_to tintucs_path
  end

  def edit
    @tintuc = Tintuc.find(params[:id])
  end

  def update
    @tintuc = Tintuc.find(params[:id]) 
    @tintuc.update(tintuc_params)

    redirect_to tintucs_path(@tintuc)
  end

  def destroy
    @tintuc = Tintuc.find(params[:id]) 
    @tintuc.destroy

    redirect_to tintucs_path
  end

  private
  def tintuc_params
    params.require(:tintuc).permit(:tieuDe, :tomTat, :noiDung, :date, :image ,:loaitins_id ,:noiBat)
  end
end
