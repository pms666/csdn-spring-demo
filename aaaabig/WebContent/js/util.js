function windowOpen(theURL,winName,features,width,hight,scrollbars,resizable,top,left) 
{
  var parameter="top="+top+",left="+left+",width="+width+",height="+hight;
  if(scrollbars=="no")
 {parameter+=",scrollbars=no";}
  else
 {parameter+=",scrollbars=yes";}
 if(resizable=="no")
 {parameter+=",resizable=no";}
 else
 {parameter+=",resizable=yes";}
  window.open(theURL,winName,parameter);
}

function selectAllByChk(chk,checkbox) {     
	var size = checkbox.length;
    if(size == null)
        checkbox.checked =chk.checked;
    else{
        for (i = 0; i < checkbox.length; i++) {
            checkbox[i].checked =chk.checked;
        }
	}
}