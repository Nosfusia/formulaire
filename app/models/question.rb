class Question < ApplicationRecord
  has_many :questionnaires
  has_many :themes, through: :questionnaires

  has_many :q_to_as
  has_many :reponses, through: :q_to_as
end
