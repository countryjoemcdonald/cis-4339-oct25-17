class AddUnitsToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :units, :integer
  end
end
