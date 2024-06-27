<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="otp.Request.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Request Dashboard</title>
        <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            box-sizing: border-box;
        }

        body {
            background-color: whitesmoke;
            width: 100%;
            height: 100vh;
        }

        .container {
            width: 400px;
            height: 300px;
            background-color: white;
            padding: 10px;
            border-radius: 4px;
            box-shadow: 0px 2px 2px 2px rgba(0,0,0,0.1);
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%,-50%);
            text-align: left;
        }

        .input-box {
            margin-top: 30px;
            display: block;
        }

            .input-box input {
                width: 90%;
                height: 30px;
                outline: 0;
                border: 0;
                background-color: whitesmoke;
                border-radius: 4px;
                padding: 4px;
                margin-top: 4px;
            }

        h1 {
            color: #333;
            font-size: 21px;
            text-align: center;
            font-weight: 500;
        }

        .input-box .labels, .label {
            color: #333;
            font-size: 14px;
            text-transform: capitalize;
            margin-top: -2px;
        }

        .btn {
            width: 90%;
            height: 35px;
            outline: 0;
            border: 0;
            cursor: pointer;
            background-color: limegreen;
            color: white;
            margin-top: 20px;
            border-radius: 9px;
        }

        .btns {
            width: 90%;
            height: 35px;
            outline: 0;
            border: 0;
            cursor: pointer;
            background-color: red;
            color: white;
            margin-top: 20px;
            border-radius: 9px;
        }
    </style>
</head>
<body>
  <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="min-w-full divide-y divide-gray-200">
            <Columns>
                <asp:BoundField DataField="request_id" HeaderText="Request ID" HeaderStyle-CssClass="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap text-sm font-medium text-gray-900" />
                <asp:BoundField DataField="email" HeaderText="EMAIL" HeaderStyle-CssClass="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap text-sm text-gray-900" />
                <asp:BoundField DataField="msg" HeaderText="MSG" HeaderStyle-CssClass="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" ItemStyle-CssClass="px-6 py-4 whitespace-nowrap text-sm text-gray-900" />
                <asp:TemplateField HeaderText="Actions">
                    <HeaderStyle CssClass="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" />
                    <ItemStyle CssClass="px-6 py-4 whitespace-nowrap text-sm font-medium" />
                    <ItemTemplate>
                        <asp:Button ID="btnAccept" runat="server" CommandName="Accept" CommandArgument='<%# Eval("request_id") %>' Text="Accept" CssClass="bg-green-500 hover:bg-green-700 text-white font-bold py-2 px-4 rounded" OnClick="accept" />
                        <asp:Button ID="btnReject" runat="server" CommandName="Reject" CommandArgument='<%# Eval("request_id") %>' Text="Reject" CssClass="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded ml-2" OnClick="reject"/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
</form>

</body>
</html>
