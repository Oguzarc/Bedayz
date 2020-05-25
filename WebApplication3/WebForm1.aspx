<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Üye Girişi"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="eposta" runat="server" placeholder="E-posta" Width="202px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="sifre" runat="server" placeholder="Parolanız" TextMode="Password" Width="204px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="girisyap" runat="server" Text="Üye Girişi" Width="219px" OnClick="girisyap_Click" />
           
        </div>
        <div>
            <asp:Label ID="Label2" runat="server" Text="Üye olma"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="email" runat="server" placeholder="E-posta" Width="202px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="şifre" runat="server" placeholder="Parolanız" TextMode="Password" Width="204px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="uyeolma" runat="server" Text="üye kayıt" Width="219px" OnClick="uyeolma_Click" />
           
        </div>
    </form>
</body>
</html>
