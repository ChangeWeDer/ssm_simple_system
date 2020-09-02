package top.upstudy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import top.upstudy.pojo.User;
import top.upstudy.service.userService;


import java.util.List;

    @Controller
    @RequestMapping("/User")
    public class userController {

        @Autowired
        @Qualifier("userServiceImpl")
        private userService userService;

        //查询所有用户
        @RequestMapping("/allUser")
        public String list(Model model) {
            List<User> list = userService.queryAllUser();
            model.addAttribute("list", list);
            return "allUser";
        }


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

        //更新用户
        @RequestMapping("/toUpdateUser")
        public String toUpdateUser(Model model, int id) {
            User User = userService.queryUserById(id);
            System.out.println(User);
            model.addAttribute("user",User );
            return "updateUser";
        }

        @RequestMapping("/updateUser")
        public String updateUser(Model model, User user) {
            System.out.println(user);
            userService.updateUser(user);
            User newUser = userService.queryUserById(user.getUserId());
            System.out.println();
            model.addAttribute("user", newUser);
            return "redirect:/User/allUser";
        }

        //删除用户
        @RequestMapping("/del/{UserId}")
        public String deleteUser(@PathVariable("UserId") int id) {
            userService.deleteUserById(id);
            return "redirect:/User/allUser";
        }

        //查询用户
        @RequestMapping("/queryUser")
        public String queryUserByName(String UserName,Model model) {
            List<User> list = userService.queryUserByName(UserName);
            System.out.println(list);
            model.addAttribute("list", list);
            return "allUser";
        }
    }

