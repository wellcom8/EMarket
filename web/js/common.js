function gfn_isNull(str) {
    if (str == null) return true;
    if (str == "NaN") return true;
    if (new String(str).valueOf() == "undefined") return true;

    let chkStr = new String(str);
    if (chkStr.valueOf() =="undefined") return true;
    if (chkStr == null) return true;
    if (chkStr.toString().length == 0) return true;
    return false;
}

function ComSubmit(opt_formId) {
    this.formId = gfn_isNull(opt_formId) == true ? "commonForm" : opt_formId;
    this.url = "";
    this.GetPost = "";

    if (this.formId == "commonForm") {
        $("#commonForm")[0].reset();
    }

    this.setUrl = function setUrl(url) {
        this.url = url;
    };

    this.addParam = function addParam(key, value) {
        $("#"+this.formId).append($("<input type='hidden' name='"+key+"' id='"+key+"' value='"+value+"'>"));
    };

    this.setMethod = function setMethod(mh) {
        this.GetPost = mh;
    }

    this.submit = function submit() {
        let frm = $("#" + this.formId)[0];
        frm.action = this.url;
        frm.method = gfn_isNull(this.GetPost) == true ? "post" : this.GetPost;
        frm.submit();
    };
}