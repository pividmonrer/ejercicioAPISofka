package examples.users;

import com.intuit.karate.junit5.Karate;

public class UserRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("user").relativeTo(getClass());
    }
}