package Model;

import jakarta.persistence.*;

@Entity
@Table(name = "gearbox_handling", schema = "carstar_db", catalog = "")
public class EntityGearboxHandling {
    @Basic
    @Column(name = "fk_car_id")
    private Integer fkCarId;
    @Basic
    @Column(name = "gearbox_type")
    private String gearboxType;
    @Basic
    @Column(name = "nb_gear")
    private Integer nbGear;
    @Basic
    @Column(name = "drive_wheels")
    private String driveWheels;
    @Basic
    @Column(name = "turning_circle")
    private Double turningCircle;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "gearbox_handling_id")
    private int gearboxHandlingId;
    @ManyToOne
    @JoinColumn(name = "fk_car_id", referencedColumnName = "car_id")
    private EntityCar carByFkCarId;

    public Integer getFkCarId() {
        return fkCarId;
    }

    public void setFkCarId(Integer fkCarId) {
        this.fkCarId = fkCarId;
    }

    public String getGearboxType() {
        return gearboxType;
    }

    public void setGearboxType(String gearboxType) {
        this.gearboxType = gearboxType;
    }

    public Integer getNbGear() {
        return nbGear;
    }

    public void setNbGear(Integer nbGear) {
        this.nbGear = nbGear;
    }

    public String getDriveWheels() {
        return driveWheels;
    }

    public void setDriveWheels(String driveWheels) {
        this.driveWheels = driveWheels;
    }

    public Double getTurningCircle() {
        return turningCircle;
    }

    public void setTurningCircle(Double turningCircle) {
        this.turningCircle = turningCircle;
    }

    public int getGearboxHandlingId() {
        return gearboxHandlingId;
    }

    public void setGearboxHandlingId(int gearboxHandlingId) {
        this.gearboxHandlingId = gearboxHandlingId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntityGearboxHandling that = (EntityGearboxHandling) o;

        if (gearboxHandlingId != that.gearboxHandlingId) return false;
        if (fkCarId != null ? !fkCarId.equals(that.fkCarId) : that.fkCarId != null) return false;
        if (gearboxType != null ? !gearboxType.equals(that.gearboxType) : that.gearboxType != null) return false;
        if (nbGear != null ? !nbGear.equals(that.nbGear) : that.nbGear != null) return false;
        if (driveWheels != null ? !driveWheels.equals(that.driveWheels) : that.driveWheels != null) return false;
        if (turningCircle != null ? !turningCircle.equals(that.turningCircle) : that.turningCircle != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = fkCarId != null ? fkCarId.hashCode() : 0;
        result = 31 * result + (gearboxType != null ? gearboxType.hashCode() : 0);
        result = 31 * result + (nbGear != null ? nbGear.hashCode() : 0);
        result = 31 * result + (driveWheels != null ? driveWheels.hashCode() : 0);
        result = 31 * result + (turningCircle != null ? turningCircle.hashCode() : 0);
        result = 31 * result + gearboxHandlingId;
        return result;
    }

    public EntityCar getCarByFkCarId() {
        return carByFkCarId;
    }

    public void setCarByFkCarId(EntityCar carByFkCarId) {
        this.carByFkCarId = carByFkCarId;
    }
}
