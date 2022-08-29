function  fun(){
    alert("默认代表您同意《用户服务协议》和《隐私政策》");
}
function  onclickfun(){
    var  nameobj=document.getElementById("zcname");
    var  nametext=nameobj.value;
    var  namespanobj=document.getElementById("namespan");
    var  natt=/^\w{3,5}$/;
    if(natt.test(nametext)!=true){
        namespanobj.innerHTML="用户名不合要求";
    }
    var  passobj=document.getElementById("zcpass");
    var  passtext=passobj.value;
    var  passspanobj=document.getElementById("passspan");
    var  patt=/^\w{6,12}$/;
    if(patt.test(passtext)!=true){
    passspanobj.innerHTML="密码不合要求";
}
    var  passrobj=document.getElementById("zcrpass");
    var  passrtext=passrobj.value;
    var passrspanobj=document.getElementById("passrspan");
    if(passrtext!=passtext){
        passrspanobj.innerHTML="密码不正确";
    }

}