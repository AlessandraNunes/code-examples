require 'mercadopago.rb'

$mp = MercadoPago.new('CLIENT_ID', 'CLIENT_SECRET')


filters = Hash[
	"status" => "approved",
	"operation_type" => "regular_payment",
	"payer.email" => "payer1@email.com"
]

searchResult = $mp.search_payment(filters)

puts searchResult