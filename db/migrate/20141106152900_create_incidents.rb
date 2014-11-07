class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
    	t.string :codeIncidents
    	t.string :intituleIncidents
    	t.string :descriptionIncidents
    	t.string :solutionIncidents
    	t.boolean :valideIncidents

      t.timestamps
    end
  end
end
