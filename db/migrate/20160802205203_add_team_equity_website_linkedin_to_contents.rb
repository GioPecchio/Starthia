class AddTeamEquityWebsiteLinkedinToContents < ActiveRecord::Migration
  def change
    add_column :contents, :team, :integer
    add_column :contents, :equity, :integer
    add_column :contents, :website, :string
    add_column :contents, :linkedin, :string
  end
end
