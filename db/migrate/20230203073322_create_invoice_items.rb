class CreateInvoiceItems < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_items do |t|
      t.string :title
      t.float :price
      t.text :description
      t.integer :quantity
      t.integer :discount
      t.float :final_price
      t.references :invoice, foreign_key: true

      t.timestamps
    end
  end
end
