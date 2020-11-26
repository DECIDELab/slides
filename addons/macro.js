remark.macros.img = function(width="50%", left="100px", top="100px", cap = "") {
var url = this;
return '<figure>' + '<img src="' + url + '" style="position:relative;left:' + left + ';top:' + top + ';width:' + width + ';box-shadow: 5px 5px 5px #BDBDBD' + '" />' + '<p style="margin:auto;position:relative;left:' + left + ';top:' + top + '">' + cap + '</p>' + '</figure>';
};

remark.macros.imgabs = function(width="50%", left="0%", top="0%") {
var url = this;
return '<figure>' + '<img src="' + url + '" style="position:absolute;left:' + left + ';top:' + top + ';width:' + width + ';box-shadow: 5px 5px 5px #BDBDBD' + '" />' + '</figure>';
};

remark.macros.imgabs2 = function(width="50%", left="0%", top="0%") {
var url = this;
return '<figure>' + '<img src="' + url + '" style="position:absolute;left:' + left + ';top:' + top + ';width:' + width + ';' + '" />' + '</figure>';
};
