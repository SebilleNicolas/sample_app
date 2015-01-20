class PrintersConsommable < ActiveRecord::Base
	# attr_accessible :printer_id, :consommable_id
	belongs_to :printer #foreign key - printer_id
	belongs_to :consommable  #foreign key - consommable_id	
end
