class InvoiceDecorator < SimpleDelegator
	def invoice_month
		__getobj__.invoice_date.month
	end

	def last_name
		__getobj__.name.split(" ").last
	end
end