package mk.ukim.finki.diansproekt.bootstrap;

import jakarta.annotation.PostConstruct;
import lombok.Getter;
import org.springframework.stereotype.Component;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


@Getter
@Component
public class DataHolder {
    @PostConstruct
    public void init() throws SQLException {

    }
}
