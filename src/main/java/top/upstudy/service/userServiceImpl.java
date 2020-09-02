package top.upstudy.service;

import top.upstudy.dao.userMapper;
import top.upstudy.pojo.User;

import java.util.List;

public class userServiceImpl implements userService{


    private userMapper userMapper;

    public void setUserMapper(userMapper userMapper) {
        this.userMapper = userMapper;
    }

    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    public int deleteUserById(int id) {
        return userMapper.deleteUserById(id);
    }

    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    public User queryUserById(int id) {
        return userMapper.queryUserById(id);
    }

    public List<User> queryUserByName(String name) {
        return userMapper.queryUserByName(name);
    }

    public List<User> queryAllUser() {
        return userMapper.queryAllUser();
    }
}
