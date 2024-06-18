<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="com.vnpay.common.Config" %>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Collections" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Payment Result</title>
    <link href="/vnpay_jsp/assets/bootstrap.min.css" rel="stylesheet"/>
    <link href="/vnpay_jsp/assets/jumbotron-narrow.css" rel="stylesheet"> 
    <script src="/vnpay_jsp/assets/jquery-1.11.3.min.js"></script>
</head>
<body>
<%
    // Begin process return from VNPAY
    Map<String, String> fields = new HashMap<>();
    for (Enumeration<String> params = request.getParameterNames(); params.hasMoreElements();) {
        String fieldName = URLEncoder.encode(params.nextElement(), StandardCharsets.US_ASCII.toString());
        String fieldValue = URLEncoder.encode(request.getParameter(fieldName), StandardCharsets.US_ASCII.toString());
        if ((fieldValue != null) && (fieldValue.length() > 0)) {
            fields.put(fieldName, fieldValue);
        }
    }

    String vnp_SecureHash = request.getParameter("vnp_SecureHash");
    if (fields.containsKey("vnp_SecureHashType")) {
        fields.remove("vnp_SecureHashType");
    }
    if (fields.containsKey("vnp_SecureHash")) {
        fields.remove("vnp_SecureHash");
    }
    String signValue = Config.hashAllFields(fields);
%>
<!-- Begin display -->
<div class="container">
    <div class="header clearfix">
        <h3 class="text-muted">Payment Result</h3>
    </div>
    <div class="table-responsive">
        <div class="form-group">
            <label>Transaction ID:</label>
            <label><%=request.getParameter("vnp_TxnRef")%></label>
        </div>    
        <div class="form-group">
            <label>Amount:</label>
            <label><%=request.getParameter("vnp_Amount")%></label>
        </div>  
        <div class="form-group">
            <label>Order Info:</label>
            <label><%=request.getParameter("vnp_OrderInfo")%></label>
        </div> 
        <div class="form-group">
            <label>Payment Response Code:</label>
            <label><%=request.getParameter("vnp_ResponseCode")%></label>
        </div> 
        <div class="form-group">
            <label>Transaction Number:</label>
            <label><%=request.getParameter("vnp_TransactionNo")%></label>
        </div> 
        <div class="form-group">
            <label>Bank Code:</label>
            <label><%=request.getParameter("vnp_BankCode")%></label>
        </div> 
        <div class="form-group">
            <label>Payment Date:</label>
            <label><%=request.getParameter("vnp_PayDate")%></label>
        </div> 
        <div class="form-group">
            <label>Transaction Status:</label>
            <label>
                <%
                    if (signValue.equals(vnp_SecureHash)) {
                        if ("00".equals(request.getParameter("vnp_TransactionStatus"))) {
                            out.print("Success");
                        } else {
                            out.print("Failed");
                        }
                    } else {
                        out.print("Invalid signature");
                    }
                %>
            </label>
        </div> 
    </div>
    <div class="form-group">
        <label>You will be redirected to the home page in 5 seconds...</label>
    </div>
    <button id="homeButton" class="btn btn-primary" onclick="location.href='<%=request.getContextPath()%>/home'">Go to Home Page</button>
    <footer class="footer">
        <p>&copy; VNPAY 2020</p>
    </footer>
</div>
<script type="text/javascript">
    // Redirect to home page after 5 seconds
    setTimeout(function() {
        window.location.href = '<%=request.getContextPath()%>/home';
    }, 5000);
</script>
</body>
</html>
