class AddSpaceNameToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :space_name, :string
  end
end
