package manager.database;

import models.Categorie;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.List;
import java.util.Map;

import static manager.database.DataBaseManager.*;

public class Manager {
    public void save(Object object){
        Session session = getSession();
        Transaction tx = session.beginTransaction();
        session.save(object);
        tx.commit();
        session.close();
    }

    public void delete(Object object){
        Session session = getSession();
        Transaction tx = session.beginTransaction();
        session.delete(object);
        tx.commit();
        session.close();
    }

    public void update(Object object){
        Session session = getSession();
        Transaction tx = session.beginTransaction();
        session.update(object);
        tx.commit();
        session.close();
    }

    public <T> List<T> list(Class<T> cls){
        Session session = DataBaseManager.getSession();
        Transaction tx = session.beginTransaction();
        List<T> result = (List<T>) session.createQuery("from "+ cls.getName()).list();
        tx.commit();
        session.close();
        return result;
    }

    /**
     * effectuer une recherche avec des conditions
     * @param cls Classe que je cherche (model)
     * @param req condition id=:id and ...
     * @param params paramét
     * @param <T> type de ma class
     * @return List de ma classe (cls) avec la condition vérifier
     */
    public <T> List<T> list(Class<T> cls, String req, Map<String, Object> params){
        Session session = DataBaseManager.getSession();
        Transaction tx = session.beginTransaction();
        Query query = session.createQuery("from "+ cls.getName() +" where "+ req);
        for (Map.Entry<String, Object> entry : params.entrySet()) {
            query.setParameter(entry.getKey(), entry.getValue());
        }
        List<T> result = (List<T>) query.list();
        tx.commit();
        session.close();
        return result;
    }

    public <T> T getById(Class<T> cls, int id) {
        Session session = DataBaseManager.getSession();
        Transaction tx = session.beginTransaction();
        T obj = (T) session.get(cls, id);
        tx.commit();
        session.close();
        return obj;
    }

    public <T> T getByMarque(Class<T> cls, String marque) {
        Session session = DataBaseManager.getSession();
        Transaction tx = session.beginTransaction();
        T obj = (T) session.get(cls, marque);
        tx.commit();
        session.close();
        return obj;
    }
}
