class AddStateToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :state, :string
    add_column :purchases, :stripe_id, :string
    add_column :purchases, :stripe_token, :string
    add_column :purchases, :error, :text
  end
end
