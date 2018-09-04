class CreateQuestionnaires < ActiveRecord::Migration[5.2]
  def change
    create_table :questionnaires do |t|
      t.references :theme, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
