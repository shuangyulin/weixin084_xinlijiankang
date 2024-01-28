import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import adminexam from '@/views/modules/exampaperlist/exam'
    import examfailrecord from '@/views/modules/examfailrecord/list'
    import xuesheng from '@/views/modules/xuesheng/list'
    import yinleliliao from '@/views/modules/yinleliliao/list'
    import examquestion from '@/views/modules/examquestion/list'
    import zuixinzixun from '@/views/modules/zuixinzixun/list'
    import exampaper from '@/views/modules/exampaper/list'
    import storeup from '@/views/modules/storeup/list'
    import discussxinlichanpin from '@/views/modules/discussxinlichanpin/list'
    import xinlichanpin from '@/views/modules/xinlichanpin/list'
    import forum from '@/views/modules/forum/list'
    import chanpinfenlei from '@/views/modules/chanpinfenlei/list'
    import discussyinleliliao from '@/views/modules/discussyinleliliao/list'
    import chat from '@/views/modules/chat/list'
    import exampaperlist from '@/views/modules/exampaperlist/list'
    import orders from '@/views/modules/orders/list'
    import config from '@/views/modules/config/list'
    import examrecord from '@/views/modules/examrecord/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/examfailrecord',
        name: '错题本',
        component: examfailrecord
      }
      ,{
	path: '/xuesheng',
        name: '学生',
        component: xuesheng
      }
      ,{
	path: '/yinleliliao',
        name: '音乐理疗',
        component: yinleliliao
      }
      ,{
	path: '/examquestion',
        name: '试题管理',
        component: examquestion
      }
      ,{
	path: '/zuixinzixun',
        name: '最新资讯',
        component: zuixinzixun
      }
      ,{
	path: '/exampaper',
        name: '试卷管理',
        component: exampaper
      }
      ,{
	path: '/storeup',
        name: '我的收藏管理',
        component: storeup
      }
      ,{
	path: '/discussxinlichanpin',
        name: '心理产品评论',
        component: discussxinlichanpin
      }
      ,{
	path: '/xinlichanpin',
        name: '心理产品',
        component: xinlichanpin
      }
      ,{
	path: '/forum',
        name: '交流论坛',
        component: forum
      }
      ,{
	path: '/chanpinfenlei',
        name: '产品分类',
        component: chanpinfenlei
      }
      ,{
	path: '/discussyinleliliao',
        name: '音乐理疗评论',
        component: discussyinleliliao
      }
      ,{
	path: '/chat',
        name: '预约咨询',
        component: chat
      }
      ,{
	path: '/exampaperlist',
        name: '试卷列表',
        component: exampaperlist
      }
      ,{
        path: '/orders/:status',
        name: '订单管理',
        component: orders
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/examrecord',
        name: '考试记录',
        component: examrecord
      }
    ]
  },
  {
    path: '/adminexam',
    name: 'adminexam',
    component: adminexam,
    meta: {icon:'', title:'adminexam'}
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
