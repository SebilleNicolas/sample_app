class CreateUserVisiteReleveCompteurs < ActiveRecord::Migration
  def change
    create_table :user_visite_releve_compteurs do |t|
    	 	t.integer	:compteurVisiteReleveCompteurs
    end
  end
end
