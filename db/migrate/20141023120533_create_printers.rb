class CreatePrinters < ActiveRecord::Migration
  def change
    create_table :printers do |t|
	  	t.string 	 :codePrinters
    	t.string 	 :descriptionPrinters
     t.timestamps		
    end
  end
end
