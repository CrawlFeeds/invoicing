require 'rails_helper'

RSpec.describe Invoice, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  describe Invoice do
    it { should have_many(:invoice_items) }
  end
  it "is not valid without a title" do
    auction = Invoice.new(title: nil)
    expect(auction).to_not be_valid
  end
  it "is not valid without a email" do
    auction = Invoice.new(email: nil)
    expect(auction).to_not be_valid
  end
end
