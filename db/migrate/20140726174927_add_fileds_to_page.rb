class AddFiledsToPage < ActiveRecord::Migration
  def change
    add_column :pages, :title_fa, :string
    add_column :pages, :text_fa, :text
  end
end
