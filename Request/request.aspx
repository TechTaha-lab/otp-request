<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request.aspx.cs" Inherits="otp.Request.request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Send Request Page</title>
    <style>
        *{
            margin:0;
            padding:0;
            font-family:sans-serif;
            box-sizing:border-box;
        }
        body{
            background-color:whitesmoke;
            width:100%;
            height:100vh;
        }
        .container{
            width:400px;
            height:300px;
            background-color:white;
            padding:10px;
            border-radius:4px;
            box-shadow:0px 2px 2px 2px rgba(0,0,0,0.1);
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%);
            text-align:left;

        }
        .input-box{
            margin-top:30px;
            display:block;

        }
        .input-box input{
            width:90%;
            height:30px;
            outline:0;
            border:0;
            background-color:whitesmoke;border-radius:4px;
            padding:4px;
            margin-top:4px;
        }
        h1{
            color:#333;
            font-size:21px;
            text-align:center;
            font-weight:500;
        }
        .input-box .labels,.label{
            color:#333;
            font-size:14px;
            text-transform:capitalize;
            margin-top:-2px;
        }
        .btn{
            width:90%;
            height:35px;
            outline:0;
            border:0;
            cursor:pointer;
            background-color:#333;
            color:white;
            margin-top:20px;
            border-radius:9px;
        }
        

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Submit Request</h1>
            <div class="input-box">
                <asp:Label ID="Label1" runat="server" Text="email" CssClass="labels"></asp:Label><br />
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input1"></asp:TextBox>
            </div>
            <div class="input-box">
                <asp:Label ID="Label2" runat="server" Text="msg" CssClass="label"></asp:Label><br />
                <asp:TextBox ID="TextBox2" runat="server" CssClass="input2"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn" OnClick="add"/>
        </div>
    </form>
</body>
</html>
