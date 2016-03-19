class AddDatesToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :from, :date
    add_column :requests, :to, :date
  end
end
