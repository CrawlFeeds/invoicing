class Invoice < ApplicationRecord
	has_many :invoice_items, dependent: :destroy
	accepts_nested_attributes_for :invoice_items

	before_save :set_status
	after_save :set_invoice

	#validations
	validates_presence_of :title, :email

	def set_invoice
		return if invoice_number
		inv = "INV/#{email.split("@")[0]}/#{Date.today.strftime("%Y%m%d")}"
		update(invoice_number: inv)
	end

	def set_status
		self.status = "not paid" unless status
	end

	def paid?
		status == "paid"
	end
end
