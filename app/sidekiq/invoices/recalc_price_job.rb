class Invoices::RecalcPriceJob
  include Sidekiq::Job

  def perform(invoice_id)
    invoice_items = InvoiceItem.where(invoice_id: invoice_id)
    total_amount = invoice_items.map{|item| item.price * item.quantity}.sum
    Invoice.find(invoice_id).update(price: total_amount, status: "paid")
  end
end
