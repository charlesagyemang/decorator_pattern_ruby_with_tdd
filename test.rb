require 'rspec'
require './helper.rb'
require './invoice.rb'
require './invoice_decorator.rb'


describe 'Delegator' do
	it 'can take an invoice as an argument and add functionality on top of the class' do
		decorated_invoice = create_decorated_invoice
		expect(decorated_invoice.invoice_month).to eq(9)
	end

	it 'can work with data from the class' do
		decorated_invoice = create_decorated_invoice
		expect(decorated_invoice.last_name).to eq("Huges")
	end

	it 'can access decorated object' do
		invoice = Invoice.new("Kristen Huges")
		decorated_invoice = InvoiceDecorator.new(invoice)
		expect(decorated_invoice.__getobj__).to eq(invoice)
	end
end	
