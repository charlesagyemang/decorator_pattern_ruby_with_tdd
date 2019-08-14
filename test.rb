require 'rspec'
require './invoice.rb'
require './invoice_decorator.rb'

describe 'Delegator' do
	#global test variables
	let(:invoice) { Invoice.new(name: "Kristen Huges", cost: 50) }
	let(:decorated_invoice) { InvoiceDecorator.new(invoice) }

	it 'can take an invoice as an argument and add functionality on top of the class' do
		expect(decorated_invoice.invoice_month).to eq(9)
	end

	it 'can work with data from the class' do
		expect(decorated_invoice.last_name).to eq("Huges")
	end

	it 'can access decorated object' do
		expect(decorated_invoice.__getobj__).to eq(invoice)
	end
end
