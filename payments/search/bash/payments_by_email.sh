curl -G -X GET \
-H "accept: application/json" \
"https://api.mercadopago.com/v1/payments/search" \
-d "access_token=ACCESS_TOKEN" \
-d "operation_type=regular_payment" \
-d "payer.email=payer1@email.com"