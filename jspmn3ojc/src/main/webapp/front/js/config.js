
var projectName = '高校班级同学录网站';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

{
	name: '我的收藏',
	url: '../storeup/list.jsp'
}
]


var indexNav = [

{
	name: '班级相册',
	url: './pages/banjixiangce/list.jsp'
}, 
{
	name: '通知信息',
	url: './pages/tongzhixinxi/list.jsp'
}, 
{
	name: '问卷调查',
	url: './pages/wenjuandiaocha/list.jsp'
}, 

{
	name: '班级论坛',
	url: './pages/forum/list.jsp'
}, 
{
	name: '公告信息',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmn3ojc/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-clothes","buttons":["新增","查看","修改","删除"],"menu":"校友","menuJump":"列表","tableName":"xiaoyou"}],"menu":"校友管理"},{"child":[{"appFrontIcon":"cuIcon-explore","buttons":["新增","查看","修改","删除"],"menu":"班级校友","menuJump":"列表","tableName":"banjixiaoyou"}],"menu":"班级校友管理"},{"child":[{"appFrontIcon":"cuIcon-keyboard","buttons":["新增","查看","修改","删除"],"menu":"学院主管","menuJump":"列表","tableName":"xueyuanzhuguan"}],"menu":"学院主管管理"},{"child":[{"appFrontIcon":"cuIcon-vipcard","buttons":["新增","查看","修改","删除"],"menu":"学校主管","menuJump":"列表","tableName":"xuexiaozhuguan"}],"menu":"学校主管管理"},{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["查看","删除"],"menu":"班级相册","menuJump":"列表","tableName":"banjixiangce"}],"menu":"班级相册管理"},{"child":[{"appFrontIcon":"cuIcon-paint","buttons":["新增","查看","修改","删除"],"menu":"类型","menuJump":"列表","tableName":"leixing"}],"menu":"类型管理"},{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["查看","删除"],"menu":"通知信息","menuJump":"列表","tableName":"tongzhixinxi"}],"menu":"通知信息管理"},{"child":[{"appFrontIcon":"cuIcon-qrcode","buttons":["新增","查看","修改","删除"],"menu":"问卷调查","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查管理"},{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","删除"],"menu":"问卷答复","menuJump":"列表","tableName":"wenjuandafu"}],"menu":"问卷答复管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["查看","删除"],"menu":"个人信息","menuJump":"列表","tableName":"gerenxinxi"}],"menu":"个人信息管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["删除","查看"],"menu":"班级统计","menuJump":"列表","tableName":"banjitongji"}],"menu":"班级统计管理"},{"child":[{"appFrontIcon":"cuIcon-form","buttons":["查看","删除"],"menu":"学院统计","menuJump":"列表","tableName":"xueyuantongji"}],"menu":"学院统计管理"},{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["删除","查看"],"menu":"学校统计","menuJump":"列表","tableName":"xuexiaotongji"}],"menu":"学校统计管理"},{"child":[{"appFrontIcon":"cuIcon-group","buttons":["查看","删除"],"menu":"班级论坛","tableName":"forum"}],"menu":"班级论坛"},{"child":[{"appFrontIcon":"cuIcon-news","buttons":["新增","查看","修改","删除"],"menu":"公告信息","tableName":"news"},{"appFrontIcon":"cuIcon-form","buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看"],"menu":"班级相册列表","menuJump":"列表","tableName":"banjixiangce"}],"menu":"班级相册模块"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"通知信息列表","menuJump":"列表","tableName":"tongzhixinxi"}],"menu":"通知信息模块"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["查看","答复"],"menu":"问卷调查列表","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-album","buttons":["查看","修改","删除"],"menu":"问卷答复","menuJump":"列表","tableName":"wenjuandafu"}],"menu":"问卷答复管理"},{"child":[{"appFrontIcon":"cuIcon-pic","buttons":["新增","查看","修改","删除"],"menu":"个人信息","menuJump":"列表","tableName":"gerenxinxi"}],"menu":"个人信息管理"},{"child":[{"appFrontIcon":"cuIcon-favor","buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"appFrontIcon":"cuIcon-group","buttons":["查看","修改","删除"],"menu":"班级论坛","tableName":"forum"}],"menu":"班级论坛"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看"],"menu":"班级相册列表","menuJump":"列表","tableName":"banjixiangce"}],"menu":"班级相册模块"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"通知信息列表","menuJump":"列表","tableName":"tongzhixinxi"}],"menu":"通知信息模块"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["查看","答复"],"menu":"问卷调查列表","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"校友","tableName":"xiaoyou"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-camera","buttons":["新增","查看","修改","删除"],"menu":"班级相册","menuJump":"列表","tableName":"banjixiangce"}],"menu":"班级相册管理"},{"child":[{"appFrontIcon":"cuIcon-goods","buttons":["新增","查看","修改","删除"],"menu":"通知信息","menuJump":"列表","tableName":"tongzhixinxi"}],"menu":"通知信息管理"},{"child":[{"appFrontIcon":"cuIcon-similar","buttons":["新增","查看","修改","删除","报表"],"menu":"班级统计","menuJump":"列表","tableName":"banjitongji"}],"menu":"班级统计管理"},{"child":[{"appFrontIcon":"cuIcon-group","buttons":["查看","修改","删除"],"menu":"班级论坛","tableName":"forum"}],"menu":"班级论坛"},{"child":[{"appFrontIcon":"cuIcon-favor","buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看"],"menu":"班级相册列表","menuJump":"列表","tableName":"banjixiangce"}],"menu":"班级相册模块"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"通知信息列表","menuJump":"列表","tableName":"tongzhixinxi"}],"menu":"通知信息模块"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["查看","答复"],"menu":"问卷调查列表","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"班级校友","tableName":"banjixiaoyou"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-form","buttons":["新增","查看","修改","删除","报表"],"menu":"学院统计","menuJump":"列表","tableName":"xueyuantongji"}],"menu":"学院统计管理"},{"child":[{"appFrontIcon":"cuIcon-group","buttons":["查看","修改","删除"],"menu":"班级论坛","tableName":"forum"}],"menu":"班级论坛"},{"child":[{"appFrontIcon":"cuIcon-favor","buttons":["查看","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看"],"menu":"班级相册列表","menuJump":"列表","tableName":"banjixiangce"}],"menu":"班级相册模块"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"通知信息列表","menuJump":"列表","tableName":"tongzhixinxi"}],"menu":"通知信息模块"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["查看","答复"],"menu":"问卷调查列表","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学院主管","tableName":"xueyuanzhuguan"},{"backMenu":[{"child":[{"appFrontIcon":"cuIcon-medal","buttons":["新增","查看","修改","删除","报表"],"menu":"学校统计","menuJump":"列表","tableName":"xuexiaotongji"}],"menu":"学校统计管理"},{"child":[{"appFrontIcon":"cuIcon-group","buttons":["查看","修改","删除"],"menu":"班级论坛","tableName":"forum"}],"menu":"班级论坛"},{"child":[{"appFrontIcon":"cuIcon-favor","buttons":["删除","查看"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"}],"frontMenu":[{"child":[{"appFrontIcon":"cuIcon-present","buttons":["查看"],"menu":"班级相册列表","menuJump":"列表","tableName":"banjixiangce"}],"menu":"班级相册模块"},{"child":[{"appFrontIcon":"cuIcon-brand","buttons":["查看"],"menu":"通知信息列表","menuJump":"列表","tableName":"tongzhixinxi"}],"menu":"通知信息模块"},{"child":[{"appFrontIcon":"cuIcon-addressbook","buttons":["查看","答复"],"menu":"问卷调查列表","menuJump":"列表","tableName":"wenjuandiaocha"}],"menu":"问卷调查模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"学校主管","tableName":"xuexiaozhuguan"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
