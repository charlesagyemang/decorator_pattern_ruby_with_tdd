require 'date'

class Invoice
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def invoice_date
			Date.new(1989, 9, 10)
	end	
end