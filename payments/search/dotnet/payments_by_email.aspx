<%@ Page Language="C#" %>

<%@ Import Namespace="mercadopago" %>

<%
MP mp = new MP ("CLIENT_ID", "CLIENT_SECRET");

Dictionary<String, String> filters = new Dictionary<String, String> ();

filters.Add("status", "approved");
filters.Add("operation_type", "regular_payment");
filters.Add("payer.email", "payer1@email.com");
      
Hashtable searchResult = mp.searchPayment (filters);

Response.Write (searchResult);
%>