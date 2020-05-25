<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="WebApplication3.Anasayfa" %>

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

            <div class="banner" id="banneeerr">
                    <img src="Images/slider1.jpg" width="360" height="173" />
                </div>
          
            
            <div id="urunler12">
                
                <asp:Menu ID="MenuDeneme" Orientation="Horizontal" StaticMenuItemStyle-CssClass="tab"  Font-Size="Large"   StaticSelectedStyle-BorderStyle="Solid" StaticSelectedStyle-BorderColor="Yellow"  CssClass="tabs" runat="server" OnMenuItemClick="MenuDeneme_MenuItemClick">
               
                <Items>
                    
                    <asp:MenuItem Text=" " ImageUrl="Images/tab1.png"  Value="0" Selected="true" ></asp:MenuItem>
                    <asp:MenuItem Text=" " ImageUrl="Images/tab2.png"  Value="1" ></asp:MenuItem>
                    <asp:MenuItem Text=" " ImageUrl="Images/tab3.png"  Value="2" ></asp:MenuItem>
                    <asp:MenuItem Text=" " ImageUrl="Images/tab4.png"  Value="3" ></asp:MenuItem>
                    
                </Items>
                    </asp:Menu>

               <div class="tabContents">
                   <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                       <asp:View ID="View1" runat="server">
                         <div class="encoksatilan">
                             <div class="urun1">
                                 <asp:ImageButton OnClick="Urun1_Click" ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

<div class="urun1">
                                 <asp:ImageButton OnClick="Urun2_Click" ImageUrl="Images/es2.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">WHITE STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

<div class="urun1">
                                 <asp:ImageButton OnClick="Urun3_Click"  ImageUrl="Images/es3.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">ILLEGAL | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺119,90</asp:Label>

                             </div>

<div class="urun1">
                                 <asp:ImageButton OnClick="Urun4_Click" ImageUrl="Images/es4.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">FLASH YELLOW STRIPED JOGGER | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺129,90</asp:Label>

                             </div>

<div class="urun1">
                                 <asp:ImageButton OnClick="Urun5_Click" ImageUrl="Images/es5.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK FLASH SOCKS | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺19,90</asp:Label>

                             </div>

<div class="urun1">
                                 <asp:ImageButton OnClick="Urun6_Click" ImageUrl="Images/es6.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">FLASH SILVER KOLYE | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺39,90</asp:Label>

                             </div>
                             
                         </div>
                       </asp:View>
                         <asp:View ID="View2" runat="server">
                           <div class="encoksatilan">
                            <div class="urun1">
                                 <asp:ImageButton OnClick="Urun7_Click" ImageUrl="Images/hd1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">MUNCHIES HOOD | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺129,90</asp:Label>

                             </div>

<div class="urun1">
                                 <asp:ImageButton OnClick="Urun8_Click" ImageUrl="Images/hd2.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">PERSPECTİVE HOOD | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺110,00</asp:Label>

                             </div>

<div class="urun1">
                                 <asp:ImageButton OnClick="Urun9_Click" ImageUrl="Images/hd3.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">LINE UP | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺110,00</asp:Label>

                             </div>

<div class="urun1">
                                 <asp:ImageButton OnClick="Urun10_Click" ImageUrl="Images/hd4.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">ILLEGAL | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺119,90</asp:Label>

                             </div>

<div class="urun1">
                                 <asp:ImageButton OnClick="Urun11_Click" ImageUrl="Images/hd5.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BETTERDAYZ | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺129,90</asp:Label>

                             </div>

<div class="urun1">
                                 <asp:ImageButton OnClick="Urun12_Click" ImageUrl="Images/hd6.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">PARADIES | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺110,00</asp:Label>

                             </div>
                             
                         </div>
                       </asp:View>
                         <asp:View ID="View3" runat="server">
                           <div class="encoksatilan">
                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>
                             
                         </div>
                       </asp:View>
                         <asp:View ID="View4" runat="server">
                         <div class="encoksatilan">
                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>

                             <div class="urun1">
                                 <asp:Image ImageUrl="Images/urun1.jpg" CssClass="urun1foto" runat="server" />
                                 <asp:Label runat="server" CssClass="urun1yazi" Font-Strikeout="False">BLACK STAY HIGH | Bedayz</asp:Label>
                                 <asp:Label runat="server" CssClass="urun1fiyat" Font-Strikeout="False">₺69,90</asp:Label>

                             </div>


                             
                         </div>
                       </asp:View>
                   </asp:MultiView>
               </div>
            </div>
            
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
                    <asp:Textbox ID="abonelik" runat="server" CssClass="abonelik"  Height="30" Width="270" placeholder="E-Posta Adresinizi Yazın"></asp:Textbox>
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
