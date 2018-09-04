class Reponse < ApplicationRecord
    has_many :questions, through: :q_to_a
    has_many :q_to_as
end
