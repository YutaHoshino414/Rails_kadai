class TsubuyakisController < ApplicationController
  def index
  end

  def new
    @tsubuyaki = Tsubuyaki.new
  end

  def create
    Tsubuyaki.create(content: params[:tsubuyaki][:content])
    redirect_to new_tsubuyaki_path
  end
end
