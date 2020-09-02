package top.upstudy.service;

import org.apache.ibatis.annotations.Param;
import top.upstudy.pojo.User;

import java.util.List;

public interface userService {
        //增加一个User
        int addUser(User user);

        //根据id删除一个User
        int deleteUserById(@Param("userId")int id);

        //更新User
        int updateUser(User user);

        //根据id查询,返回一个User
        User queryUserById(@Param("userId") int id);

        //根据name查询,返回一个List（同名情况）
        List<User> queryUserByName(@Param("userName") String name);

        //查询全部User,返回list集合
        List<User> queryAllUser();

}
