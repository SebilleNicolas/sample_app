class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
    	t.string :titreAttachments
    	t.date	:dateAjout
    	t.timestamps
    end
  end
end
