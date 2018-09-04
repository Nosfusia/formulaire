class Theme < ApplicationRecord
  has_many :questionnaires
  has_many :questions, through: :questionnaires
end
