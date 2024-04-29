package service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import entity.User;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class UserServiceTest {

    @Autowired
    private UserService userService;

    @Test
    public void testGetUserById() {
    	// User with ID 1L (long) in the database
        User user = userService.getId(1L);

        assertThat(user).isNotNull();
        assertThat(user.getUsername()).isEqualTo("Neha Pandit");

    }
}