class AddPrinterIdToIncidents < ActiveRecord::Migration
  def change
  	 add_column :incidents, :printer_id, :integer
  end
end
