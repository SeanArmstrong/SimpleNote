class AddCategoryToNote < ActiveRecord::Migration
  def change
    add_column :notes, :category_id, :id
  end
end
