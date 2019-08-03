def create_decorated_invoice
	invoice = Invoice.new("Kristen Huges")
	decorated_invoice = InvoiceDecorator.new(invoice)
end