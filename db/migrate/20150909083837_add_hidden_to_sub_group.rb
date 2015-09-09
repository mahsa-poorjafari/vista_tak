class AddHiddenToSubGroup < ActiveRecord::Migration
  def change
    add_column :sub_groups, :hidden_tik, :boolean,         default: false
  end
end
