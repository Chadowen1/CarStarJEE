package Model;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
@Table(name = "accounts", schema = "carstar_db")
public class EntityAccounts {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "account_id")
    private int accountId;
    @Basic
    @Column(name = "user_id")
    private Integer userId;
    @Basic
    @Column(name = "pass_hash")
    private String passHash;

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getPassHash() {
        return passHash;
    }

    public void setPassHash(String passHash) {
        this.passHash = passHash;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntityAccounts accounts = (EntityAccounts) o;

        if (accountId != accounts.accountId) return false;
        if (userId != null ? !userId.equals(accounts.userId) : accounts.userId != null) return false;
        if (passHash != null ? !passHash.equals(accounts.passHash) : accounts.passHash != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = accountId;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (passHash != null ? passHash.hashCode() : 0);
        return result;
    }

}
