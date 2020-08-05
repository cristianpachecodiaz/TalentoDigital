package cl.coffeejava.controlador;
import java.util.List;

import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

import cl.coffeejava.modelo.Post;



@Controller
public class PostControlador {

@RequestMapping(value = "/listadoposts", method = RequestMethod.GET)
public String getAllPostJSON(Model model) 
{    
    final String uri = "https://jsonplaceholder.typicode.com/posts/";    
    RestTemplate restTemplate = new RestTemplate();

    ResponseEntity<List<Post>> postResponse =
            restTemplate.exchange(uri,
                        HttpMethod.GET, null, new ParameterizedTypeReference<List<Post>>() {
                });
    List<Post> posts = postResponse.getBody();
    model.addAttribute("listadoposts", posts);
    System.out.println("Cantidad: " + posts.size());
    
    return "lposts";
}
@RequestMapping(value = "/detallepost/{id}", method = RequestMethod.GET)
public String getDetallePostJSON(@PathVariable int id, Model model) 
{    
    final String uri = "https://jsonplaceholder.typicode.com/posts/"+id;     
    RestTemplate restTemplate = new RestTemplate();
    Post listaposts = restTemplate.getForObject(uri, Post.class);
    model.addAttribute("ps", listaposts);
    return "verposts";
}

}