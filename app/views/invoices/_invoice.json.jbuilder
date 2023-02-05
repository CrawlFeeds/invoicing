json.extract! invoice, :id, :title, :invoice_number, :status, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
