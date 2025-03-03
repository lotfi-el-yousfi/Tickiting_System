import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserDTO {

    private int id;

    private String username;

    private String password;

    private String role;

 //implement ToDTO and ToEntity
}
