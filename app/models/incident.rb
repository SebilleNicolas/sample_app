class Incident < ActiveRecord::Base
	belongs_to :printer # foreign key - printer_id
end
