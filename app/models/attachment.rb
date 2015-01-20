class Attachment < ActiveRecord::Base
	belongs_to :printer #foreign key - printer_id, :dependent => :destroy 
	mount_uploader :file, FileUploader
end

