<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lesson4.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tip Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>This is a tip calculator</h1>
    <div>
        <label for="txtAmount">Amount: </label>
        <asp:TextBox ID="txtAmount" runat="server" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Required" ControlToValidate="txtAmount" Display="Dynamic" ></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter a number greater than 0" ControlToValidate="txtAmount"
            type="Double" MinimumValue="0.01" MaximumValue="1000" Display="Dynamic"></asp:RangeValidator>
    </div>
        <div>
            <label for="ddlPercent">Tip %</label>
            <asp:DropDownList ID="ddlPercent" runat="server">
                <asp:ListItem Value=".1" Text="10%"></asp:ListItem>
                <asp:ListItem Value=".15" Text="15%" Selected="True"></asp:ListItem>
                <asp:ListItem Value=".2" Text="20%"></asp:ListItem>

            </asp:DropDownList>
        </div>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate Tip" OnClick="btnCalculate_Click" />


        <asp:Panel ID="pnlResults" runat="server" Visible="false">
            <h4>Totals</h4>
            <label for="lbltip">Tip Amount</label>
            <asp:Label ID="lbltip" runat="server"></asp:Label>

       
            <div>
                <label for="lblTotal">Total: </label>
                <asp:Label ID="lblTotal" runat="server"></asp:Label>

            </div>
        </asp:Panel>


        
    </form>
</body>
</html>
