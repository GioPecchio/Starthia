class AddTaglineToContents < ActiveRecord::Migration
  def change
    add_column :contents, :tagline, :string
  end
end
