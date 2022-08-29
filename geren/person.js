var datas = [{
    num:2,
    act_name: '舞协常规活动',
    club_name: '舞蹈社',
    act_time: '2022.06.02',
    act_place:'一教301',
    comment:'这次活动我非常开心能够参与进来，和社员们相处很愉快，活动非常有趣！！',
}, {
    num:3,
    act_name: '舞蹈家讲座系列活动',
    club_name: '舞蹈社',
    act_time: '2022.05.26',
    act_place:'国定路梯教',
    comment:'活动举办的很不错',
},  {
    num:4,
    act_name: '沪语学习活动',
    club_name: '沪语社',
    act_time: '2022.05.17',
    act_place:'一教301',
    comment:'活动很好',
},{
    num:5,
    act_name: '沪语交流活动',
    club_name: '沪语社',
    act_time: '2022.05.15',
    act_place:'一教301',
    comment:'活动很棒，活动很好',
}];
//陈列data
var tbody = document.querySelector('tbody');
for (var i = 0; i < datas.length; i++) { 
    var tr = document.createElement('tr');
    tbody.appendChild(tr);
    for (var k in datas[i]) { 
        var td = document.createElement('td');
        td.innerHTML = datas[i][k];
        tr.appendChild(td);
    }
}


//根据点击切换界面
var leftmenu = document.querySelector('.left-menu');
var leftlis = leftmenu.children;
var right = document.querySelector('.main-wrapper');
var mainlis = right.children;
for (let i = 1 ; i < leftlis.length ; i++){
    leftlis[i].onclick = function() {
        for (let j = 1; j < mainlis.length; j++){
            mainlis[j].style.display = 'none';
        }
        mainlis[i].style.display = 'block';
    }
}

var noticeyes = document.querySelector('.act-yes');
var example2 = document.querySelector('.act-apply-example');
noticeyes.onclick = function() {
    alert('提交成功！')
    example2.style.display = 'block';
}

var comment = document.querySelector('.comment');
var notice = document.querySelector('.notice');
comment.onclick = function() {
    notice.style.display = 'block';
}

var noticeyes = document.querySelector('.notice-yes');
var com = document.querySelectorAll('td');
noticeyes.onclick = function() {
    alert('评价成功！');
    com[5].innerHTML = '非常棒！';
    notice.style.display = 'none';
}