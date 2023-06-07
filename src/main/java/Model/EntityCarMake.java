package Model;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
@Table(name = "car_make", schema = "carstar_db", catalog = "")
public class EntityCarMake {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id_car_make")
    private int idCarMake;
    @Basic
    @Column(name = "name")
    private String name;
    @Basic
    @Column(name = "id_car_type")
    private int idCarType;
    @OneToMany(mappedBy = "carMakeByMakeId")
    private Collection<EntityCar> carsByIdCarMake;

    public int getIdCarMake() {
        return idCarMake;
    }

    public void setIdCarMake(int idCarMake) {
        this.idCarMake = idCarMake;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getIdCarType() {
        return idCarType;
    }

    public void setIdCarType(int idCarType) {
        this.idCarType = idCarType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntityCarMake that = (EntityCarMake) o;

        if (idCarMake != that.idCarMake) return false;
        if (idCarType != that.idCarType) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idCarMake;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + idCarType;
        return result;
    }

    public Collection<EntityCar> getCarsByIdCarMake() {
        return carsByIdCarMake;
    }

    public void setCarsByIdCarMake(Collection<EntityCar> carsByIdCarMake) {
        this.carsByIdCarMake = carsByIdCarMake;
    }
}
