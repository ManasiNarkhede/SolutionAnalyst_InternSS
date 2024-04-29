package service;

import entity.Hotel;
import repository.HotelRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import javax.persistence.EntityNotFoundException;


@Service
public class HotelService {
    @Autowired
    private HotelRepository hotelRepository;

    public List<Hotel> getAllHotels() {
        return hotelRepository.findAll();
    }

    public Hotel getHotelById(Long id) {
        return hotelRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Hotel not found with id: " + id));
    }

    public Hotel createHotel(Hotel hotel) {
        return hotelRepository.save(hotel);
    }

    public Hotel updateHotel(Long id, Hotel updatedHotel) {
        Hotel existingHotel = getHotelById(id);
        existingHotel.setName(updatedHotel.getName());
        existingHotel.setLocation(updatedHotel.getLocation());
        existingHotel.setDescription(updatedHotel.getDescription());
        return hotelRepository.save(existingHotel);
    }

    public void deleteHotel(Long id) {
        Hotel hotel = getHotelById(id);
        hotelRepository.delete(hotel);
    }


}
