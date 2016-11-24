var CssErrorClassName = "Error";


function ValidateMaxLength(lbl, txt) {
    if (txt.val().trim().length >=2 && txt.val().trim().length <= txt.attr("maxlength")) {
        lbl.removeClass(CssErrorClassName);
        txt.removeClass(CssErrorClassName);

        return true;
    }
    else {
        lbl.addClass(CssErrorClassName);
        txt.addClass(CssErrorClassName);

        return false;
    }
}

function ValidateMaxLength1(txt) {
    if (txt.val().trim().length >=2 && txt.val().trim().length <= txt.attr("maxlength")) {
        txt.removeClass(CssErrorClassName);

        return true;
    }
    else {

        txt.addClass(CssErrorClassName);
        return false;
    }
}
function ValidateCheckbox(lbl, ch) {
    if (ch.is(':checked')) {
        lbl.removeClass(CssErrorClassName);
        return true;
    }
    else {
        lbl.addClass(CssErrorClassName);
        return false;
    }
}
function ValidateFile(lbl, file) {
    var val = file.val().toLowerCase();
    //(.*?)\.(jpg|jpeg|txt|png|docx|gif|doc|pdf|xml|bmp|ppt|pptx|vsd|xls|xlt|xlsx)$
    var regex = new RegExp("(.*?)\.(jpg|jpeg|png|gif|bmp)$");
    if ((regex.test(val))) {
        lbl.removeClass(CssErrorClassName);
       // $(".Browse").removeClass(CssErrorClassName);
        return true;
    }
    else {
        file.val('');
        lbl.addClass(CssErrorClassName);
       // $(".Browse").addClass(CssErrorClassName);

        return false;
    }
}
function ValidataEmptyVal(lbl,txt) {
    if (txt.val().trim().length != 0) {
        lbl.removeClass(CssErrorClassName);
        txt.removeClass(CssErrorClassName);

        return true;
    }
    else {
        lbl.addClass(CssErrorClassName);
        txt.addClass(CssErrorClassName);

        return false;
    }
}

//Tabish Added: validate string ! empty and !have special character
function ValidateSpecialCharacter(lbl, txt) {
    //var re = /^[a-zA-Z ]*$/;
    var re = /^(([a-zA-Z0-9]*)|([ء-ي ]+))$/;
    
    if (txt.val().length > 0) {
        if (txt.val().trim().match(re)) {
            lbl.removeClass(CssErrorClassName);
            txt.removeClass(CssErrorClassName);
            return true
        }
        else {
            lbl.addClass(CssErrorClassName);
            txt.addClass(CssErrorClassName);
            return false;
        }
    }
    else {
        lbl.addClass(CssErrorClassName);
        txt.addClass(CssErrorClassName);
        return false;
    }
}


function ValidateString(lbl, txt) {
    var re = /^#[a-f0-9]{6}$/;
    if (txt.val().length > 0) {
        if (txt.val().trim().match(re)) {
            lbl.removeClass(CssErrorClassName);
            txt.removeClass(CssErrorClassName);
            return true
        }
        else {
            lbl.addClass(CssErrorClassName);
            txt.addClass(CssErrorClassName);
            return false;
        }
    }
    else {
        lbl.addClass(CssErrorClassName);
        txt.addClass(CssErrorClassName);
        return false;
    }
}
function ValidateNotNumber(lbl, txt) {
    var re = /^([^0-9]*)$/;///^[a-zA-Z\s]+$/;
    if (txt.val().length > 0) {
        if (txt.val().trim().match(re)) {
            lbl.removeClass(CssErrorClassName);
            txt.removeClass(CssErrorClassName);
            return true
        }
        else {
            lbl.addClass(CssErrorClassName);
            txt.addClass(CssErrorClassName);
            return false;
        }
    }
    else {
        lbl.addClass(CssErrorClassName);
        txt.addClass(CssErrorClassName);
        return false;
    }
}
function ValidateEmail(lbl, txt) {
    var re = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
    if (txt.val().length > 0) {
        if (txt.val().trim().match(re)) {
            lbl.removeClass(CssErrorClassName);
            txt.removeClass(CssErrorClassName);
            return true
        }
        else {
            lbl.addClass(CssErrorClassName);
            txt.addClass(CssErrorClassName);
            return false;
        }
    }
    else {
        lbl.addClass(CssErrorClassName);
        txt.addClass(CssErrorClassName);
        return false;
    }
}
function ValidateMobile(lbl, txt) {
     var re = /^\+?[\d\s]{6,20}$/;
   // var re = /^\+?[\d\s]{6,20}$/;
    if (txt.val().length > 0) {
        if (txt.val().trim().match(re)) {
            lbl.removeClass(CssErrorClassName);
            txt.removeClass(CssErrorClassName);
            return true
        }
        else {
            lbl.addClass(CssErrorClassName);
            txt.addClass(CssErrorClassName);
            return false;
        }
    }
    else {
        lbl.addClass(CssErrorClassName);
        txt.addClass(CssErrorClassName);
        return false;
    }
}

function ValidateMobileCode(lbl, txt) {
    var re = /^\+?[\d\s]{2,7}$/;
    if (txt.val().length > 0) {
        if (txt.val().trim().match(re)) {
            lbl.removeClass(CssErrorClassName);
            txt.removeClass(CssErrorClassName);
            return true
        }
        else {
            lbl.addClass(CssErrorClassName);
            txt.addClass(CssErrorClassName);
            return false;
        }
    }
    else {
        lbl.addClass(CssErrorClassName);
        txt.addClass(CssErrorClassName);
        return false;
    }
}

function ValidateDay(txt) {
    var re = /^\+?[\d\s]{1,2}$/;
    if (txt.val().length > 0) {
        if (txt.val().trim().match(re)) {

            txt.removeClass(CssErrorClassName);
            return true
        }
        else {

            txt.addClass(CssErrorClassName);
            return false;
        }
    }
    else {

        txt.addClass(CssErrorClassName);
        return false;
    }
}
function ValidateDropDown(lbl,dp) {
    if (dp.get(0).selectedIndex != 0) {
        lbl.removeClass(CssErrorClassName);
        dp.removeClass(CssErrorClassName);
        return true
    }
    else {
        lbl.addClass(CssErrorClassName);
        dp.addClass(CssErrorClassName);
        return false;
    }
}
function ValidateNumber(lbl, txt) {
    var re = /^[0-9]*$/;
    if (txt.val().length > 0) {
        if (txt.val().trim().match(re)) {
            lbl.removeClass(CssErrorClassName);
            txt.removeClass(CssErrorClassName);
            return true
        }
        else {
            lbl.addClass(CssErrorClassName);
            txt.addClass(CssErrorClassName);
            return false;
        }
    }
    else {
        lbl.addClass(CssErrorClassName);
        txt.addClass(CssErrorClassName);
        return false;
    }
}
function ValidateUrl(txt) {
    var regexp = /(?:http|https|)(?::\/\/|)(?:www.|)(?:youtu\.be\/|youtube\.com(?:\/embed\/|\/v\/|\/watch\?v=|\/ytscreeningroom\?v=|\/feeds\/api\/videos\/|\/user\S*[^\w\-\s]|\S*[^\w\-\s]))([\w\-]{11})[a-z0-9;:@?&%=+\/\$_.-]*/;
    var regex = new RegExp(regexp);
    if (!txt.val().trim().match(regex)) {
        txt.parent().addClass(CssErrorClassName);
        return false;
    }
    else {
        txt.parent().removeClass(CssErrorClassName);
        return true;
    }
}

function ValidateRadio(lbl,radios) {
    for (i = 0; i < radios.length; ++i) {
        if (radios[i].checked) {
            lbl.removeClass(CssErrorClassName);
            return true;
        }
    }
    lbl.addClass(CssErrorClassName);
    return false;
}

function ValidateRanges(lbl1, txt1, lbl2, txt2) {
    if (parseInt(txt1.val()) < parseInt(txt2.val())) {
       // ValidateNumber(lbl1, txt1);
       // ValidateNumber(lbl2, txt2);
        
        //txt1.removeClass(CssErrorClassName);
        //txt2.removeClass(CssErrorClassName);
        //lbl1.removeClass(CssErrorClassName);
        //lbl2.removeClass(CssErrorClassName);
        return ValidateNumber(lbl1, txt1) && ValidateNumber(lbl2, txt2);
    }
    else {
        txt1.addClass(CssErrorClassName);
        txt2.addClass(CssErrorClassName);
        lbl1.addClass(CssErrorClassName);
        lbl2.addClass(CssErrorClassName);
        return false;
    }
}


function ValidateMobilewithaSpace(label, field) {
    var re = /^\+?[\d]{1,6}( [\d]{6,12})$/;
    if (!field.val().match(re)) {
        field.addClass(CssErrorClassName);
        label.addClass(CssErrorClassName);
        return false;
    }
    else {

        field.removeClass(CssErrorClassName);
        label.removeClass(CssErrorClassName);
        return true;
    }
}