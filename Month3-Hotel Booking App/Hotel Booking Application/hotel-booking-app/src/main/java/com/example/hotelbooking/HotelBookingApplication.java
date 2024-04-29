package com.example.hotelbooking;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude={DataSourceAutoConfiguration.class})
public class HotelBookingApplication {

    public static void main(String[] args) {
        System.out.println("***START***");
        SpringApplication.run(HotelBookingApplication.class, args);
        System.out.println("***STOP***");
    }
}
