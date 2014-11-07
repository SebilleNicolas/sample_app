class CreateReleveCompteurs < ActiveRecord::Migration
  def change
    create_table :releve_compteurs do |t|
    	t.string :descriptionRC
    	t.boolean :valideRC
    	t.timestamps
    end
  end
end
