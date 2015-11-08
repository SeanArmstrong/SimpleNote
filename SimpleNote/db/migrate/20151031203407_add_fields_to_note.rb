class AddFieldsToNote < ActiveRecord::Migration
  def change
    add_column :notes, :subject, :string
    add_column :notes, :body, :string
  end
end
