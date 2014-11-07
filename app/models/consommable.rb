class Consommable < ActiveRecord::Base
	has_many :printer_consommables
	# has_many :printers, through :printer_consommables
end
