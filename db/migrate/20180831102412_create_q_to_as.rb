class CreateQToAs < ActiveRecord::Migration[5.2]
  def change
    create_table :q_to_as do |t|
      t.references :question, foreign_key: true
      t.references :reponse, foreign_key: true

      t.timestamps
    end
  end
end
