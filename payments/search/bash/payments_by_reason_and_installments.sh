curl -G -X GET \
-H "accept: application/json" \
"https://api.mercadopago.com/v1/payments/search" \
-d "access_token=ACCESS_TOKEN" \
-d "payment_type_id=credit_card" \
-d "operation_type=regular_payment" \
-d "installments=12" \
-d "description=Your-item-title"