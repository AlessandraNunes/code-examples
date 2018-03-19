<%@ Page Language="C#" %>

<%@ Import Namespace="mercadopago" %>

<%
MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

Dictionary<String, String> filters = new Dictionary<String, String> ();

filters.Add("payment_type_id", "credit_card");
filters.Add("operation_type", "regular_payment");
filters.Add("installments", "12");
filters.Add("description", "Your-item-title");
      
Hashtable searchResult = mp.searchPayment (filters);

Response.Write (searchResult);
%>