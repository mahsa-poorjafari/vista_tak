class AddAttachmentIconToSubGroups < ActiveRecord::Migration
  def self.up
    change_table :sub_groups do |t|
      t.attachment :icon
    end
  end

  def self.down
    remove_attachment :sub_groups, :icon
  end
end
