package br.edu.utfpr.Library.service;

import br.edu.utfpr.Library.model.dao.UserDAO;
import br.edu.utfpr.Library.model.domain.User;

public class UserService extends AbstractService<Long, User>{
    public  UserService(){
        dao = new UserDAO();
    }
}
