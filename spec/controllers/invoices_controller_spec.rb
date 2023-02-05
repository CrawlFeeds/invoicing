require "rails_helper"

RSpec.describe InvoicesController, :type => :controller do
  let(:valid_attributes) do
    {
      'title' => 'Test',
      'email' => '12345@gmail.com'
    }
  end
  before(:all) do
    @invoice = Invoice.create(title: "Books", email: "aa@gmail.com")
  end
  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
  describe 'GET /show' do
    it 'renders a successful response' do
      inv = Invoice.last
      expect(response.status).to eq(200)
    end
  end
  describe "GET new" do
    it "has a 200 status code" do
      get :new
      expect(response.status).to eq(200)
    end
  end
  describe "responds to" do
    it "responds to html by default" do
      post :create, :params => { :invoice => { :title => "title name", email: "aaaa@gmail.com" } }
      expect(response.media_type).to eq "text/html"
    end
  end
  describe "responds to" do
    it "responds to new form again. Email should present" do
      post :create, :params => { :invoice => { :title => "title name" } }
      expect(response).to render_template(:new)
    end
  end

  describe "responds to" do
    it "responds to html by default" do
      post :create, :params => { :invoice => { :title => "title name", email: "aaaa@gmail.com" } }
      expect(response.media_type).to eq "text/html"
    end
  end
  describe "responds to" do
    it "responds to new form again. Email should present" do
      post :create, :params => { :invoice => { :title => "title name" } }
      expect(response).to render_template(:new)
    end
  end
  
  it 'checks that a Invoice can be created' do
    expect(@invoice).to be_valid
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        {
          'title' => 'Test 01',
          'email' => '12345@gmail.com'
        }
      end

      it 'updates the requested post' do
        invoice = Invoice.last
        patch invoice_url(invoice), params: { invoice: new_attributes }
        skip('Add assertions for updated state')
      end

      it 'redirects to the post' do
        invoice = Invoice.last
        patch invoice_url(invoice), params: { invoice: new_attributes }
        expect(response).to redirect_to(invoice_url(invoice))
      end
    end
  end
end