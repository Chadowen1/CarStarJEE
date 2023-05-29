package EJB;

import Model.EntityAccounts;
import jakarta.ejb.EJB;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Stateless
public class AccountEJB {
    @EJB
    private UserEJB userEJB;
    @PersistenceContext
    private EntityManager em;

    private BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    public void createAccount(int userId, String password) {
        String passHash = hashPassword(password);
        EntityAccounts account = new EntityAccounts();
        account.setUserId(userId);
        account.setPassHash(passHash);
        em.persist(account);
    }

    public boolean authenticate(String email, String password) {
        try {
            TypedQuery<Integer> userIdQuery = em.createQuery(
                    "SELECT u.userId FROM EntityUsers u WHERE u.email = :email", Integer.class);
            userIdQuery.setParameter("email", email);
            Integer userId = userIdQuery.getSingleResult();

            TypedQuery<EntityAccounts> accountQuery = em.createQuery(
                    "SELECT a FROM EntityAccounts a WHERE a.userId = :userId", EntityAccounts.class);
            accountQuery.setParameter("userId", userId);
            EntityAccounts account = accountQuery.getSingleResult();

            // Verify password using Spring Security's BCryptPasswordEncoder
            boolean passwordMatches = passwordEncoder.matches(password, account.getPassHash());
            return passwordMatches;
        } catch (NoResultException e) {
            return false; // User not found
        }
    }

    private String hashPassword(String password) {
        return passwordEncoder.encode(password);
    }
}
