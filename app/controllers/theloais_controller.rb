class TheloaisController < ApplicationController
  def index
    @theloai = Theloai.all
  end

  def new
    @theloai = Theloai.new
  end
  
  def create
    theloai = Theloai.create(theloai_params)

    redirect_to theloais_path
  end

  def edit
    @theloai = Theloai.find(params[:id])
  end

  def update
    @theloai = Theloai.find(params[:id]) 
    @theloai.update(theloai_params)

    redirect_to theloais_path(@theloai)
  end

  def destroy
    @theloai = Theloai.find(params[:id]) 
    @theloai.destroy

    redirect_to theloais_path
  end

  private
  def theloai_params
    params.require(:theloai).permit(:tenTheLoai)
  end
end
