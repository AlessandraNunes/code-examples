# coding: UTF-8

import os, sys
import mercadopago

import json

def index(req, **kwargs):
    mp = mercadopago.MP("CLIENT_ID", "CLIENT_SECRET")
    
    filters = {
        "status": "approved",
        "operation_type": "regular_payment",
        "payer.email": "payer1@email.com"
    }

    searchResult = mp.search_payment(filters)

    return json.dumps(searchResult, indent=4)