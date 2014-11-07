class CreateUserVisiteArbreDecisions < ActiveRecord::Migration
  def change
    create_table :user_visite_arbre_decisions do |t|
    	t.integer	:compteurVisiteArbreDecision
    end
  end
end
