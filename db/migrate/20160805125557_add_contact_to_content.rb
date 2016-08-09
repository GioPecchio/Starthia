class AddContactToContent < ActiveRecord::Migration
  def change
    add_column :contents, :contact, :string
  end
end
