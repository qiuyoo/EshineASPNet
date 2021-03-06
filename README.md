EshineASPNet-基于ASP.Net敏捷开发开源框架
===========================
笔者从事asp.NET开发多年，这里把一套基于asp.Net的比较完善的网站开源分享给大家，主要是帮助新人学习。本框架包含了诸多功能，在实际项目中使用了超过4年时间，相关的工具和核心代码可靠性相对比较完善，三层架构也是源于网络回馈网络。部分页面是由删除原业务逻辑得到，会包含有不够简洁的代码，全当样例，具体在自己的项目实施过程中优化。本框架的思想是，简单和快速。

****
###　　　　　　　　　　　　Author:Eshine Lee
###　　　　　　　　　 E-mail:lyx_zhl@hotmail.com

===========================

###相关链接
1. 项目完整源代码：https://github.com/lyxzhl/EshineASPNet
2. 项目Demo：http://eshine.chinacloudapp.cn:100      用户名及密码：eshine
3. 框架说明：http://blog.csdn.net/lyx_zhl/article/details/54313495

###使用教程 (教程大部分内容同样适用MVC平台，觉得有帮助的请在github来个Star或者Fork都非常欢迎！)
1. 多语言与单一登录：http://blog.csdn.net/lyx_zhl/article/details/54342494
2. 商店门店地图展示：http://blog.csdn.net/lyx_zhl/article/details/54344925
3. 身份证校验与正则：http://blog.csdn.net/lyx_zhl/article/details/54347849
4. EXCEL导入与导出：http://blog.csdn.net/lyx_zhl/article/details/54352443
5. 根据模板发送邮件：http://blog.csdn.net/lyx_zhl/article/details/54375625
6. 支付机构支付模块：http://blog.csdn.net/lyx_zhl/article/details/54377252
7. 自动生成代码模块：http://blog.csdn.net/lyx_zhl/article/details/54377962
8. 公众号开发与框架：http://blog.csdn.net/lyx_zhl/article/details/54378528

###包含功能模块和特色：
* 前台：
    * 用户登录 - 用户名/邮箱/手机多匹配登陆，md5加密方式，登陆多重定向
    * 幻灯片放映 - 基于jQuery的炫丽切换效果
    * 中英文双语 - 采用公共资源文件的多语言实现
    * 安全中心 - 含忘记密码，安全提问，绑定邮箱更换等
    * 单用户登陆 - 采用Hashtable禁用多点登陆，踢出逻辑
    * 页面超时退出 - 采用Session超时增强安全性
    * 省市区三级联动 - 内置数据库，用于地址输入
    * 百度地图模块 - 根据经纬度在百度地图标注多个门店（支持谷歌地图）
    * 身份证检查 - 严格检查身份证号码每一位确保是正确的身份证号
    * 图片验证码 - 简单字符验证码图片生成
    * 商城模块 - 轻量化的小型电商，含展示页面，购物车，收货地址及结算
    * 支付模块 - 含支付宝即时到账及银行列表
    * 自适应 - 自适应屏幕宽度
    * 发送邮件 - 根据模板发送邮件
* 后台：
    * 权限管理 - 高可复用的权限-角色-员工模块，权限具体到页面粒度
    * 用户管理 - 用户的编辑、筛选、信息展开
    * 公司管理 - 公司信息的管理
    * 商品管理 - 商场管理
    * 订单管理 - 订单的管理
    * 导入Excel - 自动读取excel多张sheet并存入数据库
    * 导出Excel - 导出gridview数据至excel

###涵盖技术：
Asp.net Webform，Sql Server，三层架构，用户控件，页面继承

###使用的第三方组件：
Bootstrap, Kindeditor, Senparc.Weixin

简单闲聊下为什么是webform而不是MVC，以及三层架构。对于这一点，本框架的思想是简单和快速，用webform的拉控件方式对于大师级工程师或企业级开发团队所不齿，（笔者未来会分享一套基于MVC的方案），不过对于初学者而言这是从学校或自学所积累的只是到真实项目开发最没有压力的一步，而且这个框架也是基于过去分享的一个教科书式三层架构基础的延伸，增加了自动实现BLL、DAL、Model的代码。

笔者在只是为了验证可行性或制作原型来交流的时候，更倾向webform的形式，因为这个阶段压根不考虑页面刷新的用户体验，页面大小对加载速度的影响等问题。另外，并不是webform就不能用ajax call的形式来做页面交互，而是在可实现所有功能及性能的基础上提供偷懒的可能性。

对于功能模块，有这个简单的框架可以快速的对设想做技术可行性探索，上面罗列的功能其实只是部分，还有诸多第三方系统的对接，短信的发送等功能都删除了，这个根据情况自行定制即可，样例都在。在对数据库操作，多功能整合，结构分层等都游刃有余以后，采用MVC，学习最前沿的技术才是王道，但不是一蹴而就的。

最后说一下使用，打包下载github包之后，先到db文件夹，这里有个bak文件可以直接还原到sql server 2012以上的版本，对于低版本的sql server，这里提供了script文件执行一次就可以创建数据库。然后修改web.config里面的connectionstring就可以运行了，have fun!

![](ScreenShot/e1.JPG)
![](ScreenShot/e2.JPG)
![](ScreenShot/e3.JPG)
![](ScreenShot/e4.JPG)
![](ScreenShot/e5.JPG)
![](ScreenShot/e6.JPG)
![](ScreenShot/e7.JPG)
![](ScreenShot/e8.JPG)
![](ScreenShot/e9.JPG)
