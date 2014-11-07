class CreateConsommables < ActiveRecord::Migration
  def change
    create_table :consommables do |t|
	    	t.string :codeConsommables
	    	t.string :designationConsommables
	    	t.boolean	 :valideConsommables

	    t.timestamps			
    end
  end
end
