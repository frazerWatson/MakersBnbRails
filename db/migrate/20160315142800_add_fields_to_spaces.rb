class AddFieldsToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :location, :string
    add_column :spaces, :details, :text
    add_column :spaces, :price, :decimal
    add_column :spaces, :available_from, :date
    add_column :spaces, :available_to, :date
  end
end
