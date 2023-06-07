package Model;

import jakarta.ejb.Stateless;
import jakarta.persistence.*;

import java.io.Serializable;

@Entity
@Table(name = "admin", schema = "carstar_db")
public class EntityAdmin implements Serializable {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "admin_id")
    private String adminId;
    @Basic
    @Column(name = "admin_pass")
    private String adminPass;

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getAdminPass() {
        return adminPass;
    }

    public void setAdminPass(String adminPass) {
        this.adminPass = adminPass;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntityAdmin that = (EntityAdmin) o;

        if (adminId != null ? !adminId.equals(that.adminId) : that.adminId != null) return false;
        if (adminPass != null ? !adminPass.equals(that.adminPass) : that.adminPass != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = adminId != null ? adminId.hashCode() : 0;
        result = 31 * result + (adminPass != null ? adminPass.hashCode() : 0);
        return result;
    }
}
