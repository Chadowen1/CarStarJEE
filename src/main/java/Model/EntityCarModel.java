package Model;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
@Table(name = "car_model", schema = "carstar_db", catalog = "")
public class EntityCarModel {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id_car_model")
    private int idCarModel;
    @Basic
    @Column(name = "id_car_make")
    private int idCarMake;
    @Basic
    @Column(name = "name")
    private String name;
    @Basic
    @Column(name = "id_car_type")
    private int idCarType;
    @OneToMany(mappedBy = "carModelByModelId")
    private Collection<EntityCar> carsByIdCarModel;
    @ManyToOne
    @JoinColumn(name = "id_car_make", referencedColumnName = "id_car_make", nullable = false)
    private EntityCarMake carMakeByIdCarMake;

    public int getIdCarModel() {
        return idCarModel;
    }

    public void setIdCarModel(int idCarModel) {
        this.idCarModel = idCarModel;
    }

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

        EntityCarModel that = (EntityCarModel) o;

        if (idCarModel != that.idCarModel) return false;
        if (idCarMake != that.idCarMake) return false;
        if (idCarType != that.idCarType) return false;
        if (name != null ? !name.equals(that.name) : that.name != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idCarModel;
        result = 31 * result + idCarMake;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + idCarType;
        return result;
    }

    public Collection<EntityCar> getCarsByIdCarModel() {
        return carsByIdCarModel;
    }

    public void setCarsByIdCarModel(Collection<EntityCar> carsByIdCarModel) {
        this.carsByIdCarModel = carsByIdCarModel;
    }

    public EntityCarMake getCarMakeByIdCarMake() {
        return carMakeByIdCarMake;
    }

    public void setCarMakeByIdCarMake(EntityCarMake carMakeByIdCarMake) {
        this.carMakeByIdCarMake = carMakeByIdCarMake;
    }
}
