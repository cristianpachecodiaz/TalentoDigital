package cl.coffeejava.servicio;

import java.util.ArrayList;
import java.util.List;

import cl.coffeejava.modelo.Post;

public class PostLista {

private List<Post> listaposts;

public PostLista() {
this.listaposts = new ArrayList<>();
}

public List<Post> getListaposts() {
return listaposts;
}

public void setListaposts(List<Post> listaposts) {
this.listaposts = listaposts;
}

}