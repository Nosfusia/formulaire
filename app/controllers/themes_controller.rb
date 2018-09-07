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
    # @theme = Theme.find(params[:theme_id])
    # @question = @theme.questions
    @themes = Theme.all
    gon.themes = Theme.pluck(:name)

    @values = []
    @themes.each do |theme|
      valeur_theme = 0
      theme.questions.each do |question|
        reponse_valeur = Reponse.find(question.reponse_id).valeur
        if reponse_valeur.present?
          valeur_theme = valeur_theme + reponse_valeur
        end
      end
      @values << valeur_theme
    end
    gon.values = @values
    puts(@values).inspect
  end

  def mail
    UserMailer.welcome(params[:email]).deliver_later
  end
end
