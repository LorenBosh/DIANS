package com.example.userloginmicroservice.bootstrap;

import jakarta.annotation.PostConstruct;
import jakarta.servlet.ServletException;
import lombok.Getter;
import org.springframework.stereotype.Component;
import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import com.example.userloginmicroservice.model.User;


@Getter
@Component
public class DataHolder {
    public static List<User> users = new ArrayList<>();
    @PostConstruct
    public void init() throws SQLException {
        users.add(new User("loren12358","123","Loren","Boshko"));
        users.add(new User("maca","123","Marija","Zografska"));

    }
}