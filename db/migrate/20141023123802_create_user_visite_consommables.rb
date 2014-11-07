class CreateUserVisiteConsommables < ActiveRecord::Migration
  def change
    create_table :user_visite_consommables do |t|
    	 	t.integer	:compteurVisiteConsommables
    end
  end
end
