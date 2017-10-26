class CreateLineItems < ActiveRecord::Migration[5.1]
  def change
    create_table :line_items do |t|
      t.references :invoice, foreign_key: true
      t.references :product, foreign_key: true
      t.decimal :price

      t.timestamps
    end
  end
end
