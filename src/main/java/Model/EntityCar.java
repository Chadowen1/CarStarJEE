package Model;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
@Table(name = "car", schema = "carstar_db", catalog = "")
public class EntityCar {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "car_id")
    private int carId;
    @Basic
    @Column(name = "make_id")
    private int makeId;
    @Basic
    @Column(name = "model_id")
    private int modelId;
    @Basic
    @Column(name = "generation")
    private String generation;
    @Basic
    @Column(name = "year_from")
    private int yearFrom;
    @Basic
    @Column(name = "year_to")
    private int yearTo;
    @Basic
    @Column(name = "serie")
    private String serie;
    @Basic
    @Column(name = "trim")
    private String trim;
    @Basic
    @Column(name = "id_car_type")
    private Integer idCarType;
    @Basic
    @Column(name = "car_price")
    private Double carPrice;
    @OneToMany(mappedBy = "carByCarId")
    private Collection<EntityBodywork> bodyworksByCarId;

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public int getMakeId() {
        return makeId;
    }

    public void setMakeId(int makeId) {
        this.makeId = makeId;
    }

    public int getModelId() {
        return modelId;
    }

    public void setModelId(int modelId) {
        this.modelId = modelId;
    }

    public String getGeneration() {
        return generation;
    }

    public void setGeneration(String generation) {
        this.generation = generation;
    }

    public int getYearFrom() {
        return yearFrom;
    }

    public void setYearFrom(int yearFrom) {
        this.yearFrom = yearFrom;
    }

    public int getYearTo() {
        return yearTo;
    }

    public void setYearTo(int yearTo) {
        this.yearTo = yearTo;
    }

    public String getSerie() {
        return serie;
    }

    public void setSerie(String serie) {
        this.serie = serie;
    }

    public String getTrim() {
        return trim;
    }

    public void setTrim(String trim) {
        this.trim = trim;
    }

    public Integer getIdCarType() {
        return idCarType;
    }

    public void setIdCarType(Integer idCarType) {
        this.idCarType = idCarType;
    }

    public Double getCarPrice() {
        return carPrice;
    }

    public void setCarPrice(Double carPrice) {
        this.carPrice = carPrice;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntityCar entityCar = (EntityCar) o;

        if (carId != entityCar.carId) return false;
        if (makeId != entityCar.makeId) return false;
        if (modelId != entityCar.modelId) return false;
        if (yearFrom != entityCar.yearFrom) return false;
        if (yearTo != entityCar.yearTo) return false;
        if (generation != null ? !generation.equals(entityCar.generation) : entityCar.generation != null) return false;
        if (serie != null ? !serie.equals(entityCar.serie) : entityCar.serie != null) return false;
        if (trim != null ? !trim.equals(entityCar.trim) : entityCar.trim != null) return false;
        if (idCarType != null ? !idCarType.equals(entityCar.idCarType) : entityCar.idCarType != null) return false;
        if (carPrice != null ? !carPrice.equals(entityCar.carPrice) : entityCar.carPrice != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = carId;
        result = 31 * result + makeId;
        result = 31 * result + modelId;
        result = 31 * result + (generation != null ? generation.hashCode() : 0);
        result = 31 * result + yearFrom;
        result = 31 * result + yearTo;
        result = 31 * result + (serie != null ? serie.hashCode() : 0);
        result = 31 * result + (trim != null ? trim.hashCode() : 0);
        result = 31 * result + (idCarType != null ? idCarType.hashCode() : 0);
        result = 31 * result + (carPrice != null ? carPrice.hashCode() : 0);
        return result;
    }

    public Collection<EntityBodywork> getBodyworksByCarId() {
        return bodyworksByCarId;
    }

    public void setBodyworksByCarId(Collection<EntityBodywork> bodyworksByCarId) {
        this.bodyworksByCarId = bodyworksByCarId;
    }
}
