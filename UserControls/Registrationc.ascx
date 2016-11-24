<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Registrationc.ascx.cs" Inherits="CentenaryCity.Web.UserControls.Registrationc" %>

<section class="contact">
    <div class="left-panel">
        <div class="">
            <%--<img src="/img/content/register-bg.jpg" alt="" />--%>
            <div class="content">
                <h2 id="formview">register your interest
                </h2>
                <%--<div class="reg-form">--%>
                <%--<p class="form-head">
                        Fields marked with an * are mandatory
                    </p>--%>
                <div id="form_error" style="display: none" runat="server" class="form-error">
                    <h6>Please correct the errors below!
                    </h6>
                </div>
                <div id="form_thankyou" style="display: none" runat="server" class="form-thankyou">
                    <h6>Your enquiry was submitted and will be responded as soon as possible.
                    </h6>
                </div>
                <br />
                <form id="form2" runat="server">
                    <fieldset class="fsInterested" runat="server" id="fsInterestedIn">
                        <legend id="interestIn" runat="server">interested in*
                        </legend>
                        <label>
                            <input type="checkbox" id="chkresidential" onclick="validatecheckbox();" groupname="interestedInType" name="interestedInType" runat="server" />
                            Residential
                        </label>
                        <label>
                            <input type="checkbox" id="chkhospitality" onclick="validatecheckbox();" groupname="interestedInType" name="interestedInType" runat="server" />
                            Hospitality
                        </label>
                        <label>
                            <input type="checkbox" id="chkcommercial" onclick="validatecheckbox();" groupname="interestedInType" name="interestedInType" runat="server" />
                            Commercial
                        </label>
                        <label>
                            <input type="checkbox" id="chkretail" onclick="validatecheckbox();" groupname="interestedInType" name="interestedInType" runat="server" />
                            Retail &amp; Entertainment
                        </label>
                        <label>
                            <input type="checkbox" id="chkart" onclick="validatecheckbox();" groupname="interestedInType" name="interestedInType" runat="server" />
                            Arts &amp; Culture
                        </label>

                    </fieldset>
                    <fieldset runat="server" id="fsTitle">
                        <label id="lblTitle" runat="server">
                            title*
                                <select runat="server" id="ddlTitle">
                                    <option value="-1">Please Select
                                    </option>
                                    <option>Mr.
                                    </option>
                                    <option>Mrs.
                                    </option>
                                    <option>Ms.
                                    </option>
                                </select>
                            <span id="Span3" class="msg"  runat="server"> Please select the Title.</span>
                        </label>
                        <label id="lblFname" runat="server">
                            first name*
                                <input type="text" runat="server" id="txtFirstName" placeholder="name" maxlength="50"/>
                                
                            <span class="msg"  runat="server"> First Name field cannot be empty.</span>
                        </label>
                        <label id="lblLastname" runat="server">
                            last name*
                                    <input type="text" runat="server" id="txtLastName" placeholder="name" maxlength="50" /> 
                            <span id="Span1" class="msg"  runat="server">The Last Name field cannot be empty.</span>
                        </label>
                        <label id="lblNationality" runat="server">
                            nationality
                                    <select runat="server" id="ddlNationality">
                                    </select>
                        </label>
                        <label id="lblEmail" runat="server">
                            email*
                                 <input type="text" runat="server" id="txtEmail" placeholder="mail" maxlength="100"   /> 
                            <span id="Span5" class="msg"  runat="server"> The Email field cannot be empty.</span>
                        </label>
                        <label id="lblMobile" runat="server">
                            mobile*
                                <input type="text" runat="server" id="txtMobile" placeholder="Mobile Number"  maxlength="20" />
                            <span id="Span6" class="msg"  runat="server"> The Mobile number field cannot be empty. </span>
                        </label>
                    </fieldset>
                    <fieldset>
                        <label id="lblCountryofResidence" runat="server">
                            country of residence
                                     <select runat="server" id="ddlCountryofResidence">
                                     </select>
                        </label>
                        <label id="lblAge" runat="server">
                            age*
                                    <select runat="server" id="ddlAge">
                                        <option value="-1">Please Select
                                        </option>
                                        <option>20-30
                                        </option>
                                        <option>30-40
                                        </option>
                                        <option>40-50
                                        </option>
                                        <option>60-above
                                        </option>
                                    </select>
                            <span id="Span2" class="msg"  runat="server"> The Age field cannot be empty.</span>
                        </label>
                        <label id="lblUnitType" runat="server">
                            unit type*
                                 <select runat="server" id="ddlUnitType">
                                     <option value="-1">Please Select
                                     </option>
                                     <option>Villa
                                     </option>
                                     <option>Serviced Villa
                                     </option>
                                     <option>Apartment
                                     </option>
                                     <option>Services Apartment
                                     </option>
                                     <option>Residential Plot
                                     </option>
                                     <option>Commercial
                                     </option>
                                     <option>Retail
                                     </option>
                                 </select>
                            <span id="Span4" class="msg"  runat="server"> Please select the Unit type.</span>
                        </label>
                        <label id="lblBedRooms">
                            No. of bedrooms
                                <select runat="server" id="ddlBedrooms">
                                    <option value="-1">Please Select
                                    </option>
                                    <option>Studio
                                    </option>
                                    <option>1 Bedroom
                                    </option>
                                    <option>2 Bedroom
                                    </option>
                                    <option>3 Bedroom
                                    </option>
                                    <option>4 Bedroom
                                    </option>
                                    <option>5+ Bedroom
                                    </option>
                                </select>
                        </label>
                        <label id="lblPreferedCommunication" runat="server">
                            prefered communication channel
                                <select runat="server" id="ddlpreferedCommunication">
                                    <option value="-1">Please Select
                                    </option>
                                    <option>Email
                                    </option>
                                    <option>Phone
                                    </option>
                                    <option>Email/Phone
                                    </option>
                                </select>
                        </label>
                        <div id="recapchaWidget" class="g-recaptcha"></div>
                    </fieldset>
                    <span class="submit-btn">
                        <%--<asp:Button ID="Save" class="submit" runat="server" OnClientClick="return Validation()" OnClick="Submit_ServerClick" Text="submit" />--%>

                        <%--OnClientClick="return Validation()"--%>
                        <asp:LinkButton ID="btnSave" runat="server" OnClientClick="return Validation()"  OnClick="Submit_ServerClick">Submit</asp:LinkButton>
                        <%-- <a href="#">submit
                            </a>--%>
                    </span>



                </form>
                <%-- </div>--%>
            </div>


            <div runat="server" id="divTh" visible="false">
                <script type="text/javascript">
                    window.location.hash = "#formview";
                </script>
            </div>

        </div>
    </div>
    <div class="right-panel">
        <div class="content">
            <h2>contact
            </h2>
            <ul>
                <li>
                    <h6>general enquiries
                    </h6>
                    <p>
                        <a href="mailto:info@centenarycity.com">info@centenarycity.com
                        </a>
                    </p>
                </li>
                <li>
                    <h6>Media
                    </h6>
                    <p>
                        <a href="mailto:media@centenarycity.com">media@centenarycity.com
                        </a>
                    </p>
                </li>
                <li>
                    <h6>TOLL FREE NUMBER
                    </h6>
                    <p>
                         <a href="callto:08099937385">0809 9937385
                        </a>
                    </p>
                </li>
				
				<li>

                      <h6>International
                    </h6>
                    <p>
                        <a href="callto:2348099937385">+234 8 099 937 385 
                        </a>
                    </p>

                </li>
                <li>
                    <h6>Centenary City Sales Centre
                    </h6>
                    <p>
                        Airport Road, Wawa District
                        <br />
                        Abuja, Nigeria
                    </p>
                </li>
            </ul>
        </div>
    </div>

</section>
<script type="text/javascript" src="/js/Validation.js"></script>
<script type="text/javascript">
    function IsRecapchaValid()
    {
        var res = grecaptcha.getResponse(widId);
        if (res == "" || res == undefined || res.length == 0)
        {
            return false;
        }
        return true;
    }

    $('#<%=ddlUnitType.ClientID%>').change(function ()
    {
        if ($('#<%=ddlUnitType.ClientID%>').val().trim() == "Commercial" || $('#<%=ddlUnitType.ClientID%>').val().trim() == "Retail")
        {
            $('#<%=ddlBedrooms.ClientID%>').val("-1");
            $('#lblBedRooms').css("display", "none")
        }
        else
        {
            $('#lblBedRooms').css("display", "block")
        }


    });




    $('#<%=txtFirstName.ClientID%>').focusout(function () {
        var lbl_fname = $('#<%=lblFname.ClientID%>');
        var tx_fname = $('#<%=txtFirstName.ClientID%>');

        //var theEvent = evt || window.event;
        //var key = theEvent.keyCode || theEvent.which;
        //key = String.fromCharCode(key);

        //var text = evt.currentTarget.value;
        //var maxLengthAttribute = evt.currentTarget.attributes.maxlength.value;

        ValidateSpecialCharacter(lbl_fname, tx_fname) && ValidateMaxLength(lbl_fname, tx_fname)

    });


    $('#<%=txtLastName.ClientID%>').focusout(function () {
        var lbl_lname = $('#<%=lblLastname.ClientID%>');
        var tx_lname = $('#<%=txtLastName.ClientID%>');

        //var theEvent = evt || window.event;
        //var key = theEvent.keyCode || theEvent.which;
        //key = String.fromCharCode(key);

        //var text = evt.currentTarget.value;
        //var maxLengthAttribute = evt.currentTarget.attributes.maxlength.value;

        ValidateSpecialCharacter(lbl_lname, tx_lname) && ValidateMaxLength(lbl_lname, tx_lname)

    });

    $('#<%=txtEmail.ClientID%>').focusout(function () {
        var lbl_email = $('#<%=lblEmail.ClientID%>');
        var tx_email = $('#<%=txtEmail.ClientID%>');

        //var theEvent = evt || window.event;
        //var key = theEvent.keyCode || theEvent.which;
        //key = String.fromCharCode(key);

        //var text = evt.currentTarget.value;
        //var maxLengthAttribute = evt.currentTarget.attributes.maxlength.value;

        ValidateEmail(lbl_email, tx_email) && ValidateMaxLength(lbl_email, tx_email);

    });

    $('#<%=txtMobile.ClientID%>').focusout(function () {
        var lbl_mobilenumber = $('#<%=lblMobile.ClientID%>');
        var tx_mobileNumber = $('#<%=txtMobile.ClientID%>');

        //var theEvent = evt || window.event;
        //var key = theEvent.keyCode || theEvent.which;
        //key = String.fromCharCode(key);

        //var text = evt.currentTarget.value;
        //var maxLengthAttribute = evt.currentTarget.attributes.maxlength.value;

        ValidateMobile(lbl_mobilenumber, tx_mobileNumber);

    });
    



    $('#<%=ddlAge.ClientID%>').focusout(function () {
        var lbl_age = $('#<%=lblAge.ClientID%>');
        var dd_age = $('#<%=ddlAge.ClientID%>');


        ValidateDropDown(lbl_age, dd_age);

    });
    $('#<%=ddlTitle.ClientID%>').focusout(function () {
        var lbl_title = $('#<%=lblTitle.ClientID%>');
        var dd_Title = $('#<%=ddlTitle.ClientID%>');

        ValidateDropDown(lbl_title, dd_Title);

    });
    $('#<%=ddlUnitType.ClientID%>').focusout(function () {
        var lbl_UnitType = $('#<%=lblUnitType.ClientID%>');
        var ddl_UnitType = $('#<%=ddlUnitType.ClientID%>');

        ValidateDropDown(lbl_UnitType, ddl_UnitType);

    });
    $('#recapchaWidget').focusout(function () {
        var recapchaWidget = $('#recapchaWidget');

        if (IsRecapchaValid()) {
            recapchaWidget.removeClass(CssErrorClassName);

        }
        else {
            recapchaWidget.addClass(CssErrorClassName);
            isValid = false;
        }

    });

    function validatecheckbox() {
        var interestedCheckboxs = $('input[groupname="interestedInType"]');
        var interestIn = $('#<%=interestIn.ClientID%>');
        if (interestedCheckboxs.is(':checked')) {
            interestIn.removeClass(CssErrorClassName);
        }
        else {
            interestIn.addClass(CssErrorClassName);
            isValid = false;
        }


    }






    function isNumberKey(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

        return true;
    }

</script>


<script type="text/javascript">
    function Validation()
    {
        var isValid = true;

        var lbl_title = $('#<%=lblTitle.ClientID%>');
        var dd_Title = $('#<%=ddlTitle.ClientID%>');
        var lbl_fname = $('#<%=lblFname.ClientID%>');
        var tx_fname = $('#<%=txtFirstName.ClientID%>');
        var lbl_lname = $('#<%=lblLastname.ClientID%>');
        var tx_lname = $('#<%=txtLastName.ClientID%>');
        var lbl_email = $('#<%=lblEmail.ClientID%>');
        var tx_email = $('#<%=txtEmail.ClientID%>');
        var lbl_mobilenumber = $('#<%=lblMobile.ClientID%>');
        var tx_mobileNumber = $('#<%=txtMobile.ClientID%>');

        var lbl_age = $('#<%=lblAge.ClientID%>');
        var dd_age = $('#<%=ddlAge.ClientID%>');

        var lbl_UnitType = $('#<%=lblUnitType.ClientID%>');
        var ddl_UnitType = $('#<%=ddlUnitType.ClientID%>');
        var recapchaWidget = $('#recapchaWidget');

        var interestIn = $('#<%=interestIn.ClientID%>');

        var chkresidential = $('#<%=chkresidential.ClientID%>');
        var chkhospitality = $('#<%=chkhospitality.ClientID%>');
        var chkcommercial = $('#<%=chkcommercial.ClientID%>');
        var chkretail = $('#<%=chkretail.ClientID%>');
        var chkart = $('#<%=chkart.ClientID%>');

        isValid = ValidateDropDown(lbl_title, dd_Title)  && isValid;
        isValid = ValidateSpecialCharacter(lbl_fname, tx_fname) && ValidateMaxLength(lbl_fname, tx_fname) && isValid;
        isValid = ValidateSpecialCharacter(lbl_lname, tx_lname) && ValidateMaxLength(lbl_lname, tx_lname) && isValid;
        isValid = ValidateEmail(lbl_email, tx_email) && ValidateMaxLength(lbl_email, tx_email) && isValid;

        if (chkresidential.is(':checked') || chkhospitality.is(':checked') || chkcommercial.is(':checked') || chkretail.is(':checked') || chkart.is(':checked'))
        {
            interestIn.removeClass(CssErrorClassName);
        }
        else
        {
            interestIn.addClass(CssErrorClassName);
            isValid = false;
        }
        isValid = ValidateMobile(lbl_mobilenumber, tx_mobileNumber) && isValid;

        isValid = ValidateDropDown(lbl_age, dd_age) && isValid;
        isValid = ValidateDropDown(lbl_UnitType, ddl_UnitType) && isValid;

        isValid = ValidateMobilewithaSpace(lbl_mobilenumber, tx_mobileNumber) && isValid;


        

        if (IsRecapchaValid())
        {
            recapchaWidget.removeClass(CssErrorClassName);

        }
        else
        {
            recapchaWidget.addClass(CssErrorClassName);
            isValid = false;
        }
        if (isValid == false)
        {
            $("#<%=form_thankyou.ClientID%>").css("display", "none")
            $("#<%=form_error.ClientID%>").css("display", "block")
        }

        return isValid;
    }


</script>
<script type="text/javascript" src="/js/intlTelInput.js"></script>
 <script>
     $("#<%=txtMobile.ClientID%>").intlTelInput();
     $("#ContentPlaceHolder1_Registrationc_txtMobile").intlTelInput();

     
</script>