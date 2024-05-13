## 博客介绍

<p align=center>
  <a href="http://www.shiyit.com">
    <img src="https://mall-ts.oss-cn-shanghai.aliyuncs.com/logo_20220724_uugai.com_1658630283483.png" alt="Utopia博客" style="border-radius: 50%">
  </a>
</p>

<p align="center">
   <a target="_blank" href="">
      <img src="https://img.shields.io/hexpm/l/plug.svg"/>
      <img src="https://img.shields.io/badge/JDK-1.8+-green.svg"/>
      <img src="https://img.shields.io/badge/springboot-2.4.1.RELEASE-green"/>
      <img src="https://img.shields.io/badge/vue-2.5.17-green"/>
      <img src="https://img.shields.io/badge/mysql-5.5.0-green"/>
      <img src="https://img.shields.io/badge/mybatis--plus-3.4.0-green"/>
      <img src="https://img.shields.io/badge/redis-6.0.5-green"/>
      <img src="https://img.shields.io/badge/elasticsearch-7.9.2-green"/>
   </a>
</p>

## 说明

Utopia博客，一款基于微服务架构的前后端分离博客源码系统。Web端使用vue+elmentui开发，后端采用SpringCloudAlibaba，总共分为3个服务，支持文件本地和云上传，使用ElasticSearch作为全文检索服务，支持QQ、码云、github、微博登录。打造一个简单的快速的微服务项目

## 在线地址

**项目链接：** [Utopia博客](http://113.45.186.233)

您的star是我坚持的动力，感谢大家的支持

## 系统演示

### 前台
#### 首页
![首页.png](./img/首页.PNG)
#### 文章列表
![首页.png](./img/文章列表.PNG)
#### 文章详情
![首页.png](./img/文章详情.PNG)
#### 聊天室
![首页.png](./img/聊天室.PNG)
#### 留言
![首页.png](./img/留言.PNG)
#### 友链
![首页.png](./img/友链.PNG)
#### 关于
![首页.png](./img/关于.PNG)
#### 导航
![首页.png](./img/导航.PNG)
#### 发布文章
![首页.png](./img/发布文章.PNG)
#### 搜索
![首页.png](./img/搜索.PNG)
#### 每日练习
![首页.png](./img/每日练习.PNG)
#### 在线简历
![首页.png](./img/在线简历.PNG)
#### 消息中心
![首页.png](./img/消息中心.PNG)

### 后台
#### 首页
![首页.png](./img/后台首页.PNG)
#### 博客管理
![首页.png](./img/博客管理.PNG)
#### 导航管理
![首页.png](./img/导航管理.PNG)
#### 用户管理
![首页.png](./img/用户管理.PNG)
#### 服务监控
![首页.png](./img/服务监控.PNG)

## 前端端技术栈
Vue、Element UI

## 后端端技术栈
Java，Spring Boot、Spring Cloud Alibaba、Mybatis-Plus、Spring Boot Mail...
## 前端部署

**第一步 下载依赖** npm install  --legacy-peer-deps

**第二步 修改配置** 修改\ourutopia\utopia_web\src\apiUrl.js文件里面的后端地址以及社交登录参数

**第三步 运行项目** npm run serve --legacy-peer-deps

**打包命令**  npm run build

**前端部署环境** Nginx

## 后端部署

**第一步** 导入SQL文件

**第二步** 导入Nacos文件、修改配置信息（如：Mysql、Redis连接信息，Nacos 地址、Nacos namespace，ES可选是否配置、Rabbitmq可选是否配置，社交登录密钥，邮箱配置，本地保存路径）

**第三步** 项目导入Idea运行即可

**后端部署环境** Java8、Nacos2.0.4、Mysql5.7、Redis、RabbitMq（可选）、Elasticsearch（可选）

## 运行环境

**推荐服务器：** 腾讯云2核4G CentOS7.6

**对象存储：** 阿里云OSS，支持本地上传

**最低服务器配置：** 1核2G服务器



## 开发环境

|            开发工具            |           说明            |
| ----------------------------- | ------------------------- |
| IDEA                          | Java开发工具IDE            |
| VSCode                        | Vue开发工具                |
| Navicat                       | MySQL远程连接工具          |
| Another Redis Desktop Manager | Redis远程连接工具          |
| finalshell                    | Linux远程连接和文件上传工具 |

