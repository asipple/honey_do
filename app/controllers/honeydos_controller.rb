class HoneydosController < ApplicationController
  def index
    @honeydo = Honeydo.all
  end

  def show
    @honeydo = Honeydo.find(params[:id])
  end

  def new
    @honeydo = Honeydo.new
  end

  def create
    @honeydo = Honeydo.new(honeydo_params)
    if @honeydo.save
      redirect_to honeydos_path, :notice => "Your Honey do was saved"
    else
      render 'new'
    end
  end

  def edit
    @honeydo = Honeydo.find(params[:id])
  end

  def update
    @honeydo = Honeydo.find(params[:id])

    if @honeydo.update_attributes(honeydo_params)
      redirect_to honeydos_path, :notice => "Your Honey do was updated"
    else
      render "edit"
    end

  end

  def destroy
    @honeydo = Honeydo.find(params[:id])
    @honeydo.destroy
    redirect_to honeydos_path
  end

private
  def honeydo_params
    params.require(:honeydo).permit(:title, :content)
  end
end
