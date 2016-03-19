class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :user
      t.string :status

      t.timestamps null: false
    end
  end
end
