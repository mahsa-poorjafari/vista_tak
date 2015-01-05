class AddTitleToSlide < ActiveRecord::Migration
  def change
    add_column :slides, :title_en, :string
    add_column :slides, :title_fa, :string
  end
end
