package controller;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.core.env.Environment;
import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest(webEnvironment = SpringBootTest.WebEnvironment.RANDOM_PORT)
public class HotelControllerTest {

    @Autowired
    private TestRestTemplate restTemplate;

    @Autowired
    private Environment environment;

    @Value("${local.server.port}")
    private int port;

    @Test
    public void testGetAllHotels() {
        String url = "http://localhost:" + environment.getProperty("local.server.port") + "/hotels";
        String response = restTemplate.getForObject(url, String.class);
        assertThat(response).contains("Hotel ABC", "Hotel XYZ", "Hotel 123");
    }
}
