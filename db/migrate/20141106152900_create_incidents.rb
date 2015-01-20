class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
    	t.string :code_incidents
    	t.string :intitule_incidents
    	t.string :description_incidents
    	t.string :solution_incidents
    	t.boolean :valide_incidents

      t.timestamps
    end
  end
end
