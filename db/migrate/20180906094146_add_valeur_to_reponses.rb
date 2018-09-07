class AddValeurToReponses < ActiveRecord::Migration[5.2]
  def change
    add_column :reponses, :valeur, :integer
  end
end
