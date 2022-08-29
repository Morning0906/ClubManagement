// 1.学生的数据
var datas = [{
    num:1,
    name: '小明',
    xuehao: '2019000001',
    sex: '男'
}, {
    num:2,
    name: '丽丽',
    xuehao: '2019000012',
    sex: '女'
}, {
    num:3,
    name: '莉莉',
    xuehao: '2019000036',
    sex: '女'
}, {
    num:4,
    name: '力力',
    xuehao: '2019000101',
    sex: '男'
}, {
    num:5,
    name: '黎黎',
    xuehao: '2019000009',
    sex: '女'
}, {
    num:6,
    name: '兰兰',
    xuehao: '2019000050',
    sex: '女'
}];
// 2. 往tbody 里面创建行： 有几个人（通过数组的长度）我们就创建几行
var tbody = document.querySelector('tbody');
for (var i = 0; i < 5; i++) { // 外面的for循环管行 tr
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

//入团申请
var yes = document.querySelectorAll('.apply-yes');
var apply = document.querySelector('.rutuan');
for (var i = 0; i < yes.length; i++) {
    yes[i].onclick = function(){
        alert('操作成功！');
        apply.remove(this.parentNode);
        var tr = document.createElement('tr');
    tbody.appendChild(tr);
    for (var k in datas[5]) { // 里面的for循环管列 td
        // 创建单元格 
        var td = document.createElement('td');
        // 把对象里面的属性值 datas[i][k] 给 td
        td.innerHTML = datas[5][k];
        tr.appendChild(td);
    }
    // 3. 创建有删除2个字的单元格 
    var td = document.createElement('td');
    td.innerHTML = '<a href="javascript:;">删除</a>';
    tr.appendChild(td);
    }  
}

//活动申请
var actyes = document.querySelector('.act-yes');
var text = document.querySelectorAll('textarea');
var example = document.querySelector('.act-apply-example');
actyes.onclick = function() {
    for (var i = 0 ; i < 6; i++){
        text[i].value = '';
    }
    example.style.display = 'block';
}

//公告管理
var noticeyes = document.querySelector('.notice-yes');
var example2 = document.querySelector('.notice-example');
noticeyes.onclick = function() {
    text[6].value = '';
    example2.style.display = 'block';
}

let imgarr = []
var file = document.getElementById("inputFile");
let imgDiv = document.getElementById("imgDiv");
let wenjian = document.getElementById("wenjian");
let size1
			file.addEventListener("change", function(event){
				imgarr = [...file.files]
				let arr = imgarr.map(v => {
					console.log(v.size,"size")
					return v.size
				})
				arr = arr.reduce((total, num) => {
					return total + num;
				})
			})
 
			function sub() {
				for (var i = 0; i < file.files.length; i++) {
					let reader = new FileReader();
					var file1 = file.files[i];
					reader.readAsDataURL(file1);
					reader.onload = function(result) {
 
						imgDiv.innerHTML += '<img src="' + reader.result + '" alt=""/>'
						// console.log(reader.result)
					}
				}
				console.log(file.files)
			}
 
			 
 
			function read() {
				for (var i = 0; i < file.files.length; i++) {
					let reader = new FileReader();
					var file1 = file.files[i];
					reader.readAsDataURL(file1);
					reader.onload = function(result) {
						//reader对象的result属性存储流读取的数据
						imgDiv.innerHTML += '<img src="' + reader.result + '" alt=""    />'
						console.log(reader.result) // 打印出转换后的base64
					}
				}
			}