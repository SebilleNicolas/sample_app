class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :titreQuestions
    	t.string :libelleQuestions
    	t.integer :IDCheminOui
    	t.integer :IDCheminNon
    	t.timestamps
    end
  end
end
