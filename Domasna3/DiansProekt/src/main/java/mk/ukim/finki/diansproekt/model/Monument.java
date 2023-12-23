package mk.ukim.finki.diansproekt.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.List;

@Entity
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
    @Column(name = "city")
    private String city;
    private int Longitude;
    private int Latitude;
    private String Address;
    @Column(name = "type")
    private String type;
    private String OpeningHours;
    private String Email;
    private Long Phone;
}
