class CreateArbreDecisions < ActiveRecord::Migration
  def change
    create_table :arbre_decisions do |t|
    	t.string :titreAD
    	t.timestamps
    end
  end
end
