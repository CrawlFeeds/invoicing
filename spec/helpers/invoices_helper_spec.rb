require "spec_helper"

describe InvoicesHelper do
  before(:all) do
    @invoice = Invoice.create(title: "Books", email: "aa@gmail.com")
    @invoice_2 = Invoice.create(title: "Books 02", email: "aa34@gmail.com")
    @invoice_item = InvoiceItem.create(price: 10.0, quantity: 4, invoice_id: @invoice.id)
    @invoice_item_1 = InvoiceItem.create(price: 20.0, quantity: 1, invoice_id: @invoice.id)
  end
  describe "#total_price" do
    it "returns value" do
      expect(helper.total_price(@invoice_item)).to eq(40.0)
    end
  end
  describe "#total_payable_amount" do
    it "returns value" do
      expect(helper.total_payable_amount(@invoice.invoice_items)).to eq(60.0)
    end
  end
  describe "#status_color" do
    it "returns value" do
      expect(helper.status_color(@invoice.status))
    end
  end
  describe "#status_color" do
    it "returns value" do
      status = @invoice_2.update(status: "paid").status
      expect(helper.status_color(status))
    end
  end
end