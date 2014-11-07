class CreatePrinterConso < ActiveRecord::Migration
  def change
    create_table :printer_consos do |t|
    	t.integer :consommable_id
    	t.integer :printer_id
    	t.timestamps
    end
  end
end
