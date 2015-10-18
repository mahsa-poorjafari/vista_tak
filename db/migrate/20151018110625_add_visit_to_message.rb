class AddVisitToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :visit, :boolean,         default: false
  end
end
