class PrintersIncident < ActiveRecord::Base
	# attr_accessible :printer_id, :consommable_id
	belongs_to :printer #foreign key - printer_id
	belongs_to :incident  #foreign key - incident_id	
end
