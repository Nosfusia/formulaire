class AddReferencesToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :reponse_id, :integer
  end
end
