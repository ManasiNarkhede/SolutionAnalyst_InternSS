import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class MyComponent {

    @Value("${spring.datasource.url}")
    private String dbUrl;

    @Value("${spring.datasource.username}")
    private String dbUsername;

    @Value("${spring.datasource.password}")
    private String dbPassword;

    public void someMethod() {
        System.out.println("DB URL: " + "jdbc:mysql://localhost:3306/hotel_booking_db");
        System.out.println("DB Username: " + "root@localhost");
        System.out.println("DB Password: " + "MNsi#0082");
    }
}
