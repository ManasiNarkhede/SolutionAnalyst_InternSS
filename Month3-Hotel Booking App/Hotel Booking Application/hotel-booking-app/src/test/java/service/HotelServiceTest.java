package service;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
public class HotelServiceTest {

    @Autowired
    private HotelService hotelService;

    @Test
    public void testGetAllHotels() {
        assertThat(hotelService.getAllHotels()).isNotEmpty();
    }

}
