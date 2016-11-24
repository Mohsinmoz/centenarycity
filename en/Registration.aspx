<%@ Page Title="Register :CentenaryCity" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="CentenaryCity.Web.en.Registration" %>

<%@ Register Src="~/UserControls/Registrationc.ascx" TagPrefix="uc1" TagName="Registrationc" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="banner">
        <img src="/img/contact/banner.jpg" alt="" />
    </section>
    <uc1:Registrationc runat="server" ID="Registrationc" />
    <script type="text/javascript">
        var widId = "";
        var onloadCallback = function ()
        {
            widId = grecaptcha.render('recapchaWidget', {
                'sitekey': '<%=CentenaryCity.Common.Helper.RecapchaKey%>'
            });
        };
    </script>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=explicit" async defer></script>
    
</asp:Content> 