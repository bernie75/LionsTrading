class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.monetize :price, currency: { present: false }
      t.string :sku

      t.timestamps
    end
  end
end
