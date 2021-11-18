class NinhosController < ApplicationController
  def index
    @ninhos = Ninho.all
  end

  def show
    @ninho = Ninho.find(params[:id])
  end

  def new
    @ninho = Ninho.new
  end

  def create
    @ninho = Ninho.new(ninho_params)
    @ninho.save
    redirect_to ninho_path(@ninho)
  end

  private

  def ninho_params
    params.require(:ninho).permit(:nome, :descricao, :valor)
  end
end
