class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :email_client
      t.string :email
      t.string :guid
      t.integer :content_id

      t.timestamps null: false
    end
  end
end
