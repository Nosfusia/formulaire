class ThemesController < ApplicationController
  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def answer
    @theme = Theme.find(params[:theme_id])
    @question = @theme.questions
  end

  def mail
    UserMailer.welcome(params[:email])
  end
end
