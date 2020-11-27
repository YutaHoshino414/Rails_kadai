class TsubuyakisController < ApplicationController
  before_action :set_tsubuyaki, only: [:show, :edit, :update]
  def index
    @tsubuyakis = Tsubuyaki.all
  end

  def new
    @tsubuyaki = Tsubuyaki.new
  end

  def create
    @tsubuyaki = Tsubuyaki.new(tsubuyaki_params)
    if @tsubuyaki.save
      redirect_to tsubuyakis_path, notice: "つぶやきを作成しました！"
    else
      render :new
    end
  end

  def edit
    @tsubuyaki = Tsubuyaki.find(params[:id])
  end

  def update
    @tsubuyaki = Tsubuyaki.find(params[:id])
    if @tsubuyaki.update(tsubuyaki_params)
      redirect_to tsubuyakis_path, notice: "つぶやきを編集しました！"
    else
      render :edit
    end
  end

  def show
    @tsubuyaki = Tsubuyaki.find(params[:id])
  end

  private
  def tsubuyaki_params
    params.require(:tsubuyaki).permit(:content)
  end
  def set_tsubuyaki
    @tsubuyaki = Tsubuyaki.find(params[:id])
  end
end
