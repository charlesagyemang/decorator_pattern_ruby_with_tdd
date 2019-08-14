require 'date'

class Invoice
	attr_accessor :name, :cost

	def initialize(name:, cost:)
		@name = name
		@cost = cost
	end

	def invoice_date
			Date.new(1989, 9, 10)
	end

	def print
	  #code
		puts "Invoice Number #{rand(1..10000).to_s}\n
					For: #{@name}\n
					InvoiceDate: #{self.invoice_date}\n
					AmountDue: #{@cost}"
	end
end
