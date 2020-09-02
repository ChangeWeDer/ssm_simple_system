import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import top.upstudy.pojo.User;
import top.upstudy.service.userServiceImpl;

public class Test {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        userServiceImpl list = context.getBean("userServiceImpl", userServiceImpl.class);
        for (User user:list.queryAllUser()) {
            System.out.println(user);

        }
    }
}
