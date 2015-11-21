class CreateUsersCollections < ActiveRecord::Migration
  def change
    create_table :users_collections do |t|
      t.integer :user_id
      t.integer :collection_id

      t.timestamps null: false
    end
  end
end
