class CreateSubGroups < ActiveRecord::Migration
  def change
    create_table :sub_groups do |t|
      t.string :title_en
      t.string :title_fa
      t.text :description_en
      t.text :description_fa

      t.timestamps
    end
  end
end
