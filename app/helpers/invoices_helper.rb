module InvoicesHelper
	def total_price(invoice_item)
		invoice_item.quantity * invoice_item.price
	end

	def total_payable_amount(items)
		items.inject(0) do |result, item|
			result += (item.price * item.quantity)
		end
	end

	def status_color(status)
		(status == "paid")? "green" : "yellow"
	end
end
