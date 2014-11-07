class Printer < ActiveRecord::Base
	has_many :incidents 
	has_many :printer_consommables
	has_many :consommables#, through: :printer_consommables
	
	# has_many :printer_consommables
	# has_many :consommables, through :printer_consommable
end
