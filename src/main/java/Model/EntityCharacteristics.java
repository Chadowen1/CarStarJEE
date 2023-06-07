package Model;

import jakarta.persistence.*;

@Entity
@Table(name = "characteristics", schema = "carstar_db", catalog = "")
public class EntityCharacteristics {
    @Basic
    @Column(name = "car_id")
    private Integer carId;
    @Basic
    @Column(name = "cruising_range")
    private String cruisingRange;
    @Basic
    @Column(name = "fuel")
    private String fuel;
    @Basic
    @Column(name = "emission_standards")
    private String emissionStandards;
    @Basic
    @Column(name = "fuel_tank_capacity")
    private Double fuelTankCapacity;
    @Basic
    @Column(name = "acceleration")
    private Double acceleration;
    @Basic
    @Column(name = "max_speed")
    private Integer maxSpeed;
    @Basic
    @Column(name = "fuel_consumption_city")
    private Double fuelConsumptionCity;
    @Basic
    @Column(name = "fuel_consumption_highway")
    private Double fuelConsumptionHighway;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "characteristics_id")
    private int characteristicsId;
    @ManyToOne
    @JoinColumn(name = "car_id", referencedColumnName = "car_id")
    private EntityCar carByCarId;

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public String getCruisingRange() {
        return cruisingRange;
    }

    public void setCruisingRange(String cruisingRange) {
        this.cruisingRange = cruisingRange;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    public String getEmissionStandards() {
        return emissionStandards;
    }

    public void setEmissionStandards(String emissionStandards) {
        this.emissionStandards = emissionStandards;
    }

    public Double getFuelTankCapacity() {
        return fuelTankCapacity;
    }

    public void setFuelTankCapacity(Double fuelTankCapacity) {
        this.fuelTankCapacity = fuelTankCapacity;
    }

    public Double getAcceleration() {
        return acceleration;
    }

    public void setAcceleration(Double acceleration) {
        this.acceleration = acceleration;
    }

    public Integer getMaxSpeed() {
        return maxSpeed;
    }

    public void setMaxSpeed(Integer maxSpeed) {
        this.maxSpeed = maxSpeed;
    }

    public Double getFuelConsumptionCity() {
        return fuelConsumptionCity;
    }

    public void setFuelConsumptionCity(Double fuelConsumptionCity) {
        this.fuelConsumptionCity = fuelConsumptionCity;
    }

    public Double getFuelConsumptionHighway() {
        return fuelConsumptionHighway;
    }

    public void setFuelConsumptionHighway(Double fuelConsumptionHighway) {
        this.fuelConsumptionHighway = fuelConsumptionHighway;
    }

    public int getCharacteristicsId() {
        return characteristicsId;
    }

    public void setCharacteristicsId(int characteristicsId) {
        this.characteristicsId = characteristicsId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntityCharacteristics that = (EntityCharacteristics) o;

        if (characteristicsId != that.characteristicsId) return false;
        if (carId != null ? !carId.equals(that.carId) : that.carId != null) return false;
        if (cruisingRange != null ? !cruisingRange.equals(that.cruisingRange) : that.cruisingRange != null)
            return false;
        if (fuel != null ? !fuel.equals(that.fuel) : that.fuel != null) return false;
        if (emissionStandards != null ? !emissionStandards.equals(that.emissionStandards) : that.emissionStandards != null)
            return false;
        if (fuelTankCapacity != null ? !fuelTankCapacity.equals(that.fuelTankCapacity) : that.fuelTankCapacity != null)
            return false;
        if (acceleration != null ? !acceleration.equals(that.acceleration) : that.acceleration != null) return false;
        if (maxSpeed != null ? !maxSpeed.equals(that.maxSpeed) : that.maxSpeed != null) return false;
        if (fuelConsumptionCity != null ? !fuelConsumptionCity.equals(that.fuelConsumptionCity) : that.fuelConsumptionCity != null)
            return false;
        if (fuelConsumptionHighway != null ? !fuelConsumptionHighway.equals(that.fuelConsumptionHighway) : that.fuelConsumptionHighway != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = carId != null ? carId.hashCode() : 0;
        result = 31 * result + (cruisingRange != null ? cruisingRange.hashCode() : 0);
        result = 31 * result + (fuel != null ? fuel.hashCode() : 0);
        result = 31 * result + (emissionStandards != null ? emissionStandards.hashCode() : 0);
        result = 31 * result + (fuelTankCapacity != null ? fuelTankCapacity.hashCode() : 0);
        result = 31 * result + (acceleration != null ? acceleration.hashCode() : 0);
        result = 31 * result + (maxSpeed != null ? maxSpeed.hashCode() : 0);
        result = 31 * result + (fuelConsumptionCity != null ? fuelConsumptionCity.hashCode() : 0);
        result = 31 * result + (fuelConsumptionHighway != null ? fuelConsumptionHighway.hashCode() : 0);
        result = 31 * result + characteristicsId;
        return result;
    }

    public EntityCar getCarByCarId() {
        return carByCarId;
    }

    public void setCarByCarId(EntityCar carByCarId) {
        this.carByCarId = carByCarId;
    }
}
