class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :title
      t.string :invoice_number, uniq: true
      t.string :status
      t.string :email
      t.float :price

      t.timestamps
    end
  end
end
