class Questionnaire < ApplicationRecord
  belongs_to :theme
  belongs_to :question
end
