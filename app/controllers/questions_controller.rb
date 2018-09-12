class QuestionsController < ApplicationController
  def index
  end

  def show
    @question = Question.find(params[:id])
    @theme = params[:theme_id]
  end

  def new
  end

  def create
    current_theme = Theme.find(params[:theme_id])
    current_question = Question.find(params[:question_id])
    current_question.reponse_id = params[:reponse]
    next_theme = Theme.find_by_id(params[:theme_id].to_i + 1)
    if current_question.save!
      next_question = current_theme.questions.find_by_id(current_question.id + 1)
      if next_question.present?
        redirect_to question_path(id: next_question.id, theme_id: current_theme.id)
      elsif next_theme.present?
        redirect_to question_path(id: next_theme.questions.first.id, theme_id: next_theme)
      else
        redirect_to answer_themes_path
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
