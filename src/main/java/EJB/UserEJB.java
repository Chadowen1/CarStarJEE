package EJB;

import Model.EntityUsers;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

@Stateless
public class UserEJB {
    @PersistenceContext
    private EntityManager em;

    public int createUser(String firstName, String lastName, String email) {
        EntityUsers user = new EntityUsers();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        em.persist(user);
        return user.getUserId();
    }

    public boolean isEmailUsed(String email) {
        try {
            TypedQuery<Long> query = em.createQuery("SELECT COUNT(a) FROM EntityUsers a WHERE a.email = :email", Long.class);
            query.setParameter("email", email);
            Long count = query.getSingleResult();
            return count > 0;
        } catch (NoResultException e) {
            return false;
        }
    }

    public EntityUsers getUserByEmail(String email) {
        return em.find(EntityUsers.class, email);
    }
}
