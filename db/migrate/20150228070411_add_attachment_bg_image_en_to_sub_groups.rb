class AddAttachmentBgImageEnToSubGroups < ActiveRecord::Migration
  def self.up
    change_table :sub_groups do |t|
      t.attachment :bg_image_en
    end
  end

  def self.down
    remove_attachment :sub_groups, :bg_image_en
  end
end
