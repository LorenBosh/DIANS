package mk.ukim.finki.diansproekt.bootstrap;

import jakarta.annotation.PostConstruct;
import jakarta.servlet.ServletException;
import lombok.Getter;
import mk.ukim.finki.diansproekt.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.init.ResourceDatabasePopulator;
import org.springframework.stereotype.Component;
import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;


@Getter
@Component
public class DataHolder {

    private final NamedParameterJdbcTemplate jdbcTemplate;



//    public static List<Monument> monumentList = new ArrayList<Monument>();
 public static List<User> users = new ArrayList<>();

    @Autowired
    public DataHolder(DataSource dataSource) {
        this.jdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
    }

    //
    @PostConstruct
    public void init() throws SQLException {
        ResourceDatabasePopulator resourceDatabasePopulator=new ResourceDatabasePopulator();
        resourceDatabasePopulator.addScript(new ClassPathResource("schema.sql"));

        resourceDatabasePopulator.execute(Objects.requireNonNull(jdbcTemplate.getJdbcTemplate().getDataSource()));

//        monumentList.add(new Monument(1L,"Меморијален центар АСНОМ", "North Macedonia", "Пелинце", 21,42, "Memorial Center ASNOM, R1207, Pelince, North Macedonia", "museum", "always open", "email",38972213249L));
//        monumentList.add(new Monument(2L,"Кокино", "North Macedonia", "Кокино", 21,42, "Кокино, R2244, Kokino, North Macedonia", "archaeological_site", "always open", "email",38974440645L));
//        monumentList.add(new Monument(3L,"Св. Великомаченик Георгиј", "North Macedonia", "Staro Nagorichane", 21,42, "Church of St. George, R1207, Staro Nagorichane, North Macedonia", "church", "Mon-Sunday 07:00-19:00", "email",38974370927L));
//        monumentList.add(new Monument(4L,"Манастир Св. Богородица", "North Macedonia", "Pobozhje", 21,42, "St. Holy Mother of God Monastery, R2239, Pobozhje, North Macedonia", "church", "Mon-Fri 08:00-16:00", "email",38979882985L));
//        monumentList.add(new Monument(5L,"Костоперска Карпа", "North Macedonia", "Mlado Nagorichane", 21,42, "Костоперска Карпа, A2, Mlado Nagorichane, North Macedonia", "archaeological_site", "always open", "email",38979405111L));
//        monumentList.add(new Monument(6L,"Симиќева кула", "North Macedonia", "Кратово", 21,42, "Simikj Tower, Трајче Арсов, Kratovo, North Macedonia", "monument", "always open", "email",38977734634L));
//        monumentList.add(new Monument(7L,"Споменик Костурница", "North Macedonia", "Куманово", 21,42, "Споменик Костурница, Средорек, 1300 Kumanovo, North Macedonia", "monument", "always open", "email",38973463626L));
//        monumentList.add(new Monument(8L,"Јосип Броз - Тито", "North Macedonia", "Куманово", 21,42, "Јосип Броз - Тито, Иво Лола Рибар, 1300 Kumanovo, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//        monumentList.add(new Monument(8L,"proba2", "North Macedonia", "proba", 21,42, "proba, proba, North Macedonia", "monument", "always open", "email",38975468954L));
//
//
//
        users.add(new User("loren12358","123","Loren","Boshko"));
        users.add(new User("maca","123","Marija","Zografska"));
//
    }
}
