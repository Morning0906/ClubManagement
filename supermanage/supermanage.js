// 1.社团的数据
var datas = [{
    num:1,
    name: '粤动听',
    xuehao: '2009-03-07',
    sex: '张三'
}, {
    num:2,
    name: '钢琴社',
    xuehao: '2010-03-09',
    sex: '张三'
}, {
    num:3,
    name: '桌游社',
    xuehao: '2011-04-10',
    sex: '张三'
}, {
    num:4,
    name: '音乐社',
    xuehao: '2013-05-09',
    sex: '小明'
}, {
    num:5,
    name: '舞蹈社',
    xuehao: '2014-06-02',
    sex: '张三'
},{
    num:6,
    name: '沪语社',
    xuehao: '2019-04-07',
    sex: '张三'
},{
    num:7,
    name: '体育社',
    xuehao: '2022-06-10',
    sex: '张三'
},];
// 2. 往tbody 里面创建行： 有几个人（通过数组的长度）我们就创建几行
var tbody = document.querySelector('tbody');
for (var i = 0; i < 6; i++) { // 外面的for循环管行 tr
    // 1. 创建 tr行
    var tr = document.createElement('tr');
    tbody.appendChild(tr);
    // 2. 行里面创建单元格(跟数据有关系的3个单元格) td 单元格的数量取决于每个对象里面的属性个数  for循环遍历对象 datas[i]
    for (var k in datas[i]) { // 里面的for循环管列 td
        // 创建单元格 
        var td = document.createElement('td');
        // 把对象里面的属性值 datas[i][k] 给 td
        td.innerHTML = datas[i][k];
        tr.appendChild(td);
    }
    // 3. 创建有删除2个字的单元格 
    var td = document.createElement('td');
    td.innerHTML = '<a href="#">删除</a>';
    tr.appendChild(td);
}

// 4. 删除操作 开始 
var as = document.querySelectorAll('a');
for (var i = 0; i < as.length; i++) {
    as[i].onclick = function() {
        // 点击a 删除 当前a 所在的行(链接的爸爸的爸爸)  node.removeChild(child)  
        tbody.removeChild(this.parentNode.parentNode)
    }
}

//根据点击切换界面
var leftmenu = document.querySelector('.left-menu');
var leftlis = leftmenu.children;
var main = document.querySelector('.main-wrapper');
var mainlis = main.children;
for (let i = 1 ; i < leftlis.length ; i++){
    leftlis[i].onclick = function() {
        for (let j = 1; j < mainlis.length; j++){
            mainlis[j].style.display = 'none';
        }
        mainlis[i].style.display = 'block';
    }
}

//创建社团
var createyes = document.querySelector('.create-yes');
var text = document.querySelectorAll('textarea');
createyes.onclick = function() {
    for (var i = 0 ; i < text.length; i++){
        text[i].value = '';
    }
    alert('创建成功！');
    var tr = document.createElement('tr');
    tbody.appendChild(tr);
    for (var k in datas[6]) { // 里面的for循环管列 td
        // 创建单元格 
        var td = document.createElement('td');
        // 把对象里面的属性值 datas[i][k] 给 td
        td.innerHTML = datas[6][k];
        tr.appendChild(td);
    }
    // 3. 创建有删除2个字的单元格 
    var td = document.createElement('td');
    td.innerHTML = '<a href="javascript:;">删除</a>';
    tr.appendChild(td);
}

var apply = document.querySelector('.main-apply');
var applylis = apply.children;
var applyyes = document.querySelector('.apply-yes');
applyyes.onclick = function(){
    applylis[0].remove();
    alert('审核成功！');
}
