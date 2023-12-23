package mk.ukim.finki.diansproekt.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
@Table(name = "Monuments")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class Monument {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String Country;
    private String City;
    private int Longitude;
    private int Latitude;
    private String Address;
    private String Type;
    private String OpeningHours;
    private String Email;
    private Long Phone;
}
