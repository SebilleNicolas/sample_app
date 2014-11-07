class CreateUserVisiteIncidents < ActiveRecord::Migration
  def change
    create_table :user_visite_incidents do |t|
    	 	t.integer	:compteurVisiteIncidents
    end
  end
end
