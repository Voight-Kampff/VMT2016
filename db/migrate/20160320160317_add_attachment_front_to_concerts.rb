class AddAttachmentFrontToConcerts < ActiveRecord::Migration
  def self.up
    change_table :concerts do |t|
      t.attachment :front
    end
  end

  def self.down
    remove_attachment :concerts, :front
  end
end
