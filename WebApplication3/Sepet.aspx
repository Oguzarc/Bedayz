<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sepet.aspx.cs" Inherits="WebApplication3.Sepet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Bedayz</title>
    <link href="style.css" rel="stylesheet" />
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
         <div id="wrapper">
            
            <header>

                <div id="butonlar">
           
                    <div class="butonlar" id="logo">
                           <asp:ImageButton OnClick="Logo_Click" ImageUrl="\Images\bedayzlogo.png" runat="server" />
                    </div>
                    

                    <div class="butonlar" id="uyelik">
                        <asp:ImageButton OnClick="UyelikButon_Click"  ImageUrl="\Images\uyelik.png" runat="server" />
                    </div>

                    <div class="butonlar" id="sepet">
                        <asp:ImageButton OnClick="SepetButon_Click"  ImageUrl="\Images\sepet.png" runat="server" />
                    </div>
                   
                    </div>


            </header>
           
            <div id="sidebar">
                    <div class="toggle-btn" onclick="toggleSidebar()">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <ul>
                        <asp:Button ID="Anasayfar" Text="ANASAYFA" runat="server" Width="250" Height="50" CssClass="ButonlarMenu"  OnClick="Anasayfar_Click" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" BackColor="White" Font-Size="Medium" Font-Bold="True" />
                        <asp:Button Text="T-SHIRTS" runat="server" Width="250" Height="50" CssClass="ButonlarMenu" OnClientClick="Urun1_Click" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" BackColor="White" Font-Size="Medium" Font-Bold="True" />
                        <asp:Button Text="HOODIES" runat="server" Width="250" Height="50" CssClass="ButonlarMenu" OnClientClick="/UrunSayfa1.aspx" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" BackColor="White" Font-Size="Medium" Font-Bold="True" />
                        <asp:Button Text="EŞOFMAN" runat="server" Width="250" Height="50" CssClass="ButonlarMenu" OnClientClick="/UrunSayfa1.aspx" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" BackColor="White" Font-Size="Medium" Font-Bold="True" />
                        <asp:Button Text="AKSESUAR" runat="server" Width="250" Height="50" CssClass="ButonlarMenu" OnClientClick="/UrunSayfa1.aspx" BorderStyle="Solid" BorderWidth="1px" BorderColor="Black" BackColor="White" Font-Size="Medium" Font-Bold="True" />
              
                    </ul>
                </div>
          
           <div class="Sepet">
               <asp:Label CssClass="sepetyazi" runat="server" Font-Size="XX-Large" Font-Bold="true">SEPET</asp:Label>
               <asp:Label CssClass="sepetyazi" runat="server" Font-Bold="true">______________________________________________</asp:Label>

               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="AD" HeaderText="AD">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="RESİM" HeaderText="RESİM">
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>

               

               





           </div>
                         <asp:Button ID="Odeme" runat="server" Text="Ödeme Yap"  OnClick="Odeme_Click" CssClass="UyeButon"  />

                <div class="footer">
                <div class="footer1">
                <img src="Images/footer.png" / width="360" height="208" />
                 <br />
                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">______________________________________________</asp:Label>
                 <br />
                 <br />
               

                </div>
                <div class="footersocial">
                    <asp:ImageButton runat="server" Height="30" Width="30" ImageUrl="Images/instagram-logo.png" OnClick="Instagram_Click" />
                    <asp:ImageButton runat="server" Height="30" Width="30" ImageUrl="Images/twitter-logo.png"  OnClick="Twitter_Click" />
                    <asp:ImageButton runat="server" Height="30" Width="30" ImageUrl="Images/facebook-logo.png" OnClick="Facebook_Click" />
                </div>

                <div class="footerab">
                    <asp:Label runat="server" CssClass="footerbaslik" Font-Strikeout="False" Font-Bold="true" >ALIŞVERİŞ BİLGİLERİ</asp:Label>
                    <asp:Label runat="server"  Font-Strikeout="False">______________________________________________</asp:Label>
                    <asp:Label runat="server" CssClass="footerlink" Text="Siparişlerim" Font-Size="Small" />
                    <asp:Label runat="server" CssClass="footerlink" Text="İade Taleplerim" Font-Size="Small" />
                    <asp:Label runat="server" CssClass="footerlink" Text="Kargo Takip" Font-Size="Small" />
                    <asp:Label runat="server" CssClass="footerlink" Text="Hesabım" Font-Size="Small" />
                       <asp:Label runat="server"  Font-Strikeout="False">______________________________________________</asp:Label>
                    <asp:Label runat="server" CssClass="footerbaslik" Font-Strikeout="False" Font-Bold="true">MÜŞTERİ HİZMETLERİ</asp:Label>
                    <asp:Label runat="server"  Font-Strikeout="False">______________________________________________</asp:Label>
                    <asp:Label runat="server" CssClass="footerlink" Text="Hakkında" Font-Size="Small" />
                    <asp:Label runat="server" CssClass="footerlink" Text="İletişim" Font-Size="Small" />
                       <asp:Label runat="server"  Font-Strikeout="False">______________________________________________</asp:Label>
                        <asp:Label runat="server" CssClass="footerbaslik" Font-Strikeout="False" Font-Bold="true">E-BÜLTEN KAYIT</asp:Label>
                    <asp:Label runat="server"  Font-Strikeout="False">______________________________________________</asp:Label>
                    <asp:Label runat="server" CssClass="kampanya" Text="Kampanyalarımızdan ve indirimlerimizden güncel olarak haberdar olun." Font-Size="Small" />
                    <asp:Textbox runat="server" CssClass="abonelik"  Height="30" Width="270" placeholder="E-Posta Adresinizi Yazın"></asp:Textbox>
                    <asp:Button runat="server" CssClass="abonelikbuton"  Height="30" Width="60" Text="Gönder" Font-Bold="true" OnClick="abonelikbuton_Click" />


                </div>
            
                <img src="Images/footercopyright.png" width="360" height="62" />
        </div>

        </div>
    </form>
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/Metodlar.js"></script>
</body>
</html>
