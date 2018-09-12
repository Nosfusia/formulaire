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
    @theme_points = []
    @themes.each do |theme|
      valeur_theme = 0
      theme.questions.each do |question|
        reponse_valeur = Reponse.find(question.reponse_id).valeur
        if reponse_valeur.present?
          valeur_theme = valeur_theme + reponse_valeur
        end
      end
      @values << valeur_theme
      @theme_points << {name: theme.name, valeur: valeur_theme}
    end

    theme_max = @theme_points.sort_by{|x| x[:value]}.first
    phrases = [{name: "Gateaux", value:"merde"}]
    @phrase = phrases.find{|x| x[:name] == theme_max[:name]}[:value]

    gon.values = @values
    puts(@values).inspect

    # respond_to do |format|
    #   format.html
    #   format.pdf do
    #     pdf = AnswerPdf.new(@theme)
    #     send_data pdf.render, filename: 'answer.pdf', type: 'application/pdf', disposition: "inline"
    #   end
    # end


    respond_to do |format|
    format.html
    format.pdf do
      render  :pdf => 'answer.html.erb',
              :template => 'themes/answer.html.erb',
              :layout => "application.html.erb",
              :page_size => "A4",
              javascript_delay: 1000, # The relevant line is this one
              options: {
              responsive: false
              }
      end
    end
  end

  def mail
    UserMailer.welcome(params[:email]).deliver_later
  end
end
