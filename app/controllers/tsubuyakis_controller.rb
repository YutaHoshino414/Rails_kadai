class TsubuyakisController < ApplicationController
  def index
    @tsubuyakis = Tsubuyaki.all
  end

  def new
    @tsubuyaki = Tsubuyaki.new
  end

  def create
    Tsubuyaki.create(tsubuyaki_params)
    redirect_to new_tsubuyaki_path
  end

  private
  def tsubuyaki_params
    params.require(:tsubuyaki).permit(:content)
  end
end
