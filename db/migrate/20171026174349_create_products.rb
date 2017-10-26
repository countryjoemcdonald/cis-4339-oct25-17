class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :desc
      t.decimal :price

      t.timestamps
    end
  end
end
