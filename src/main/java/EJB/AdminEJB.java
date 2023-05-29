package EJB;

import Model.EntityAdmin;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;
import java.util.Optional;

@Stateless
public class AdminEJB {
    @PersistenceContext
    private EntityManager em;

    public boolean authenticate(String admin_id, String admin_pass) {
        Optional<EntityAdmin> optionalAdmin = findAdminById(admin_id);
        if (optionalAdmin.isPresent()) {
            EntityAdmin admin = optionalAdmin.get();
            return admin.getAdminPass().equals(admin_pass);
        }
        return false;
    }

    public Optional<EntityAdmin> findAdminById(String admin_id) {
        List<EntityAdmin> admins = em.createQuery("SELECT u FROM EntityAdmin u WHERE u.adminId = :admin_id", EntityAdmin.class)
                .setParameter("admin_id", admin_id)
                .getResultList();

        if (!admins.isEmpty()) {
            return Optional.of(admins.get(0));
        }
        return Optional.empty();
    }
}
