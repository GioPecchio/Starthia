class AddAmountToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :amount, :integer
  end
end
