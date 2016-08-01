class AddAttachmentCopertinaToContents < ActiveRecord::Migration
  def self.up
    change_table :contents do |t|
      t.attachment :copertina
    end
  end

  def self.down
    remove_attachment :contents, :copertina
  end
end
