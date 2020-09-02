# ssm_simple_system
## 一、前言
这是一个整合了SSM的极简用户管理系统，包含了简单的增删改查功能，适合初学者加深对于SSM的应用学习。
## 二、数据库准备
* 使用了MySQL数据库，仅使用了一张用户表

```sql
CREATE DATABASE `user_Sys`;
 
USE `user_Sys`;
 
DROP TABLE IF EXISTS `users`;
 
CREATE TABLE `users` (
  `userID` INT(10) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `userName` VARCHAR(25) NOT NULL COMMENT '姓名',
  `userSex` VARCHAR(25) NOT NULL COMMENT '性别',
  `userAge` INT(10) NOT NULL COMMENT '年龄',
  PRIMARY KEY (`userID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
 
INSERT  INTO `users`(`userID`,`userName`,`userSex`,`userAge`)VALUES 
(1,'张三','男',18),
(2,'李四','男',19),
(3,'王舞','女',20);
```
## 三、功能
* 目录如下
![在这里插入图片描述](https://img-blog.csdnimg.cn/20200902165628632.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80Mzg3ODMzMg==,size_16,color_FFFFFF,t_70#pic_center)

* 主页如下
![在这里插入图片描述](https://img-blog.csdnimg.cn/20200902164202323.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3dlaXhpbl80Mzg3ODMzMg==,size_16,color_FFFFFF,t_70#pic_center)
**包含了**
* 新增用户功能
```xml
    <!--增加一个user-->
    <insert id="addUser" parameterType="User">
        insert into users (userName,userSex,userAge) values
        (#{userName},#{userSex},#{userAge})
    </insert>
```

```java
    //增加一个User
    int addUser(User user);
```

```java
           //添加用户
        @RequestMapping("/toAddUser")
        public String toAddOne() {
            return "addUser";
        }

        @RequestMapping("/addUser")
        public String addUser(User user) {
            System.out.println(user);
            userService.addUser(user);
            return "redirect:/User/allUser";
        }
```

* **
* 查询用户（按id查询用户、按姓名查询用户、查询所有用户）功能

```xml
   <!--根据id查询,返回一个user-->
    <select id="queryUserById" resultType="User">
        select * from users
        where userID = #{userId}
    </select>

    <!--根据name查询,返回一个user-->
    <select id="queryUserByName" resultType="User">
        select * from users
        where userName = #{userName}
    </select>

    <!--查询全部user-->
    <select id="queryAllUser" resultType="User">
        SELECT * from users
    </select>
```
```java
    //根据id查询,返回一个User
    User queryUserById(@Param("userId") int id);

    //根据name查询,返回一个List（同名情况）
    List<User> queryUserByName(@Param("userName") String name);

    //查询全部User,返回list集合
    List<User> queryAllUser();
```
* **
* 删除用户功能
```xml
    <!--根据id删除一个user-->
    <delete id="deleteUserById" parameterType="int">
        delete from users where userID=#{userId}
    </delete>
```
```java
    //根据id删除一个User
    int deleteUserById(@Param("userId")int id);
```
* **
* 更新用户信息功能
```xml
    <!--更新user-->
    <update id="updateUser" parameterType="User">
        update users
        set userName = #{userName},userSex = #{userSex},userAge = #{userAge}
        where userID = #{userId}
    </update>
```
```java
    //更新User
    int updateUser(User user);
```
## 四、系统代码
[GitHub下载](https://github.com/ChangeWeDer/ssm_simple_system)
