require 'rails_helper'

RSpec.describe InvoiceItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it { should belong_to(:invoice) }
  it "is not valid without a name" do
    item = InvoiceItem.new(title: nil)
    expect(item).to_not be_valid
  end
  it "is not valid without a price" do
    item = InvoiceItem.new(price: nil)
    expect(item).to_not be_valid
  end
  it "is not valid without a quantity" do
    item = InvoiceItem.new(quantity: nil)
    expect(item).to_not be_valid
  end
end
