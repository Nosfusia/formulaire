class AnswerPdf < Prawn::Document
  def initialize(theme)
    super()
    @themes = Theme.all
    to_pdf
  end

  def to_pdf
    text "hey"
  end
end
