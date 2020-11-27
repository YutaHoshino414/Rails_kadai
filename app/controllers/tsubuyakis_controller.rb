class TsubuyakisController < ApplicationController
  before_action :set_tsubuyaki, only: [:show, :edit, :update, :destroy]
  def index
    @tsubuyakis = Tsubuyaki.all
  end

  def new
    @tsubuyaki = Tsubuyaki.new
  end

  def confirm
    @tsubuyaki = Tsubuyaki.new(tsubuyaki_params)
    render :new if @tsubuyaki.invalid?
  end

  def create
    @tsubuyaki = Tsubuyaki.new(tsubuyaki_params)
    if params[:back]
      render :new
    else
      if @tsubuyaki.save
        redirect_to tsubuyakis_path, notice: "つぶやきを作成しました！"
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
    if @tsubuyaki.update(tsubuyaki_params)
      redirect_to tsubuyakis_path, notice: "つぶやきを編集しました！"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @tsubuyaki.destroy
    redirect_to tsubuyakis_path, notice:"つぶやきを削除しました！"
  end

  private
  def tsubuyaki_params
    params.require(:tsubuyaki).permit(:content)
  end
  def set_tsubuyaki
    @tsubuyaki = Tsubuyaki.find(params[:id])
  end
end
