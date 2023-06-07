package Model;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
@Table(name = "car_type", schema = "carstar_db", catalog = "")
public class EntityCarType {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id_car_type")
    private int idCarType;
    @Basic
    @Column(name = "name")
    private String name;
    @OneToMany(mappedBy = "carTypeByIdCarType")
    private Collection<EntityCar> carsByIdCarType;
    @OneToMany(mappedBy = "carTypeByIdCarType")
    private Collection<EntityCarMake> carMakesByIdCarType;
    @OneToMany(mappedBy = "carTypeByIdCarType")
    private Collection<EntityCarModel> carModelsByIdCarType;

    public int getIdCarType() {
        return idCarType;
    }

    public void setIdCarType(int idCarType) {
        this.idCarType = idCarType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntityCarType that = (EntityCarType) o;

        if (idCarType != that.idCarType) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idCarType;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        return result;
    }

    public Collection<EntityCar> getCarsByIdCarType() {
        return carsByIdCarType;
    }

    public void setCarsByIdCarType(Collection<EntityCar> carsByIdCarType) {
        this.carsByIdCarType = carsByIdCarType;
    }

    public Collection<EntityCarMake> getCarMakesByIdCarType() {
        return carMakesByIdCarType;
    }

    public void setCarMakesByIdCarType(Collection<EntityCarMake> carMakesByIdCarType) {
        this.carMakesByIdCarType = carMakesByIdCarType;
    }

    public Collection<EntityCarModel> getCarModelsByIdCarType() {
        return carModelsByIdCarType;
    }

    public void setCarModelsByIdCarType(Collection<EntityCarModel> carModelsByIdCarType) {
        this.carModelsByIdCarType = carModelsByIdCarType;
    }
}
