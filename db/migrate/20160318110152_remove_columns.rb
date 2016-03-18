class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :requests, :user
  end
end
