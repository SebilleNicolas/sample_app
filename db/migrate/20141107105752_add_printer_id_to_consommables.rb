class AddPrinterIdToConsommables < ActiveRecord::Migration
  def change
  	add_column :consommables, :printer_id, :integer
  end
end
