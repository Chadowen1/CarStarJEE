package Model;

import jakarta.persistence.*;

@Entity
@Table(name = "engine", schema = "carstar_db", catalog = "")
public class EntityEngine {
    @Basic
    @Column(name = "car_id")
    private Integer carId;
    @Basic
    @Column(name = "stroke_cycle")
    private Integer strokeCycle;
    @Basic
    @Column(name = "cylinder_bore")
    private Integer cylinderBore;
    @Basic
    @Column(name = "intercooler")
    private String intercooler;
    @Basic
    @Column(name = "boost_type")
    private String boostType;
    @Basic
    @Column(name = "valves_per_cylinder")
    private Integer valvesPerCylinder;
    @Basic
    @Column(name = "injection_type")
    private String injectionType;
    @Basic
    @Column(name = "cylinder_layout")
    private String cylinderLayout;
    @Basic
    @Column(name = "maximum_torque")
    private Integer maximumTorque;
    @Basic
    @Column(name = "max_power")
    private Integer maxPower;
    @Basic
    @Column(name = "turnover_maximum_torque")
    private Integer turnoverMaximumTorque;
    @Basic
    @Column(name = "engine_power")
    private Integer enginePower;
    @Basic
    @Column(name = "capacity")
    private Integer capacity;
    @Basic
    @Column(name = "engine_type")
    private String engineType;
    @Basic
    @Column(name = "nb_cylinders")
    private Integer nbCylinders;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "engine_id")
    private int engineId;
    @ManyToOne
    @JoinColumn(name = "car_id", referencedColumnName = "car_id")
    private EntityCar carByCarId;

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public Integer getStrokeCycle() {
        return strokeCycle;
    }

    public void setStrokeCycle(Integer strokeCycle) {
        this.strokeCycle = strokeCycle;
    }

    public Integer getCylinderBore() {
        return cylinderBore;
    }

    public void setCylinderBore(Integer cylinderBore) {
        this.cylinderBore = cylinderBore;
    }

    public String getIntercooler() {
        return intercooler;
    }

    public void setIntercooler(String intercooler) {
        this.intercooler = intercooler;
    }

    public String getBoostType() {
        return boostType;
    }

    public void setBoostType(String boostType) {
        this.boostType = boostType;
    }

    public Integer getValvesPerCylinder() {
        return valvesPerCylinder;
    }

    public void setValvesPerCylinder(Integer valvesPerCylinder) {
        this.valvesPerCylinder = valvesPerCylinder;
    }

    public String getInjectionType() {
        return injectionType;
    }

    public void setInjectionType(String injectionType) {
        this.injectionType = injectionType;
    }

    public String getCylinderLayout() {
        return cylinderLayout;
    }

    public void setCylinderLayout(String cylinderLayout) {
        this.cylinderLayout = cylinderLayout;
    }

    public Integer getMaximumTorque() {
        return maximumTorque;
    }

    public void setMaximumTorque(Integer maximumTorque) {
        this.maximumTorque = maximumTorque;
    }

    public Integer getMaxPower() {
        return maxPower;
    }

    public void setMaxPower(Integer maxPower) {
        this.maxPower = maxPower;
    }

    public Integer getTurnoverMaximumTorque() {
        return turnoverMaximumTorque;
    }

    public void setTurnoverMaximumTorque(Integer turnoverMaximumTorque) {
        this.turnoverMaximumTorque = turnoverMaximumTorque;
    }

    public Integer getEnginePower() {
        return enginePower;
    }

    public void setEnginePower(Integer enginePower) {
        this.enginePower = enginePower;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }

    public String getEngineType() {
        return engineType;
    }

    public void setEngineType(String engineType) {
        this.engineType = engineType;
    }

    public Integer getNbCylinders() {
        return nbCylinders;
    }

    public void setNbCylinders(Integer nbCylinders) {
        this.nbCylinders = nbCylinders;
    }

    public int getEngineId() {
        return engineId;
    }

    public void setEngineId(int engineId) {
        this.engineId = engineId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntityEngine that = (EntityEngine) o;

        if (engineId != that.engineId) return false;
        if (carId != null ? !carId.equals(that.carId) : that.carId != null) return false;
        if (strokeCycle != null ? !strokeCycle.equals(that.strokeCycle) : that.strokeCycle != null) return false;
        if (cylinderBore != null ? !cylinderBore.equals(that.cylinderBore) : that.cylinderBore != null) return false;
        if (intercooler != null ? !intercooler.equals(that.intercooler) : that.intercooler != null) return false;
        if (boostType != null ? !boostType.equals(that.boostType) : that.boostType != null) return false;
        if (valvesPerCylinder != null ? !valvesPerCylinder.equals(that.valvesPerCylinder) : that.valvesPerCylinder != null)
            return false;
        if (injectionType != null ? !injectionType.equals(that.injectionType) : that.injectionType != null)
            return false;
        if (cylinderLayout != null ? !cylinderLayout.equals(that.cylinderLayout) : that.cylinderLayout != null)
            return false;
        if (maximumTorque != null ? !maximumTorque.equals(that.maximumTorque) : that.maximumTorque != null)
            return false;
        if (maxPower != null ? !maxPower.equals(that.maxPower) : that.maxPower != null) return false;
        if (turnoverMaximumTorque != null ? !turnoverMaximumTorque.equals(that.turnoverMaximumTorque) : that.turnoverMaximumTorque != null)
            return false;
        if (enginePower != null ? !enginePower.equals(that.enginePower) : that.enginePower != null) return false;
        if (capacity != null ? !capacity.equals(that.capacity) : that.capacity != null) return false;
        if (engineType != null ? !engineType.equals(that.engineType) : that.engineType != null) return false;
        if (nbCylinders != null ? !nbCylinders.equals(that.nbCylinders) : that.nbCylinders != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = carId != null ? carId.hashCode() : 0;
        result = 31 * result + (strokeCycle != null ? strokeCycle.hashCode() : 0);
        result = 31 * result + (cylinderBore != null ? cylinderBore.hashCode() : 0);
        result = 31 * result + (intercooler != null ? intercooler.hashCode() : 0);
        result = 31 * result + (boostType != null ? boostType.hashCode() : 0);
        result = 31 * result + (valvesPerCylinder != null ? valvesPerCylinder.hashCode() : 0);
        result = 31 * result + (injectionType != null ? injectionType.hashCode() : 0);
        result = 31 * result + (cylinderLayout != null ? cylinderLayout.hashCode() : 0);
        result = 31 * result + (maximumTorque != null ? maximumTorque.hashCode() : 0);
        result = 31 * result + (maxPower != null ? maxPower.hashCode() : 0);
        result = 31 * result + (turnoverMaximumTorque != null ? turnoverMaximumTorque.hashCode() : 0);
        result = 31 * result + (enginePower != null ? enginePower.hashCode() : 0);
        result = 31 * result + (capacity != null ? capacity.hashCode() : 0);
        result = 31 * result + (engineType != null ? engineType.hashCode() : 0);
        result = 31 * result + (nbCylinders != null ? nbCylinders.hashCode() : 0);
        result = 31 * result + engineId;
        return result;
    }

    public EntityCar getCarByCarId() {
        return carByCarId;
    }

    public void setCarByCarId(EntityCar carByCarId) {
        this.carByCarId = carByCarId;
    }
}
