class TsubuyakisController < ApplicationController
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

  def show
    @tsubuyaki = Tsubuyaki.find(params[:id])
  end

  private
  def tsubuyaki_params
    params.require(:tsubuyaki).permit(:content)
  end
end
