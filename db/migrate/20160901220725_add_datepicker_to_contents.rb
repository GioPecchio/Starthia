class AddDatepickerToContents < ActiveRecord::Migration
  def change
    add_column :contents, :datepicker, :datetime
  end
end
