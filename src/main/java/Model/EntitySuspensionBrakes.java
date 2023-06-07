package Model;

import jakarta.persistence.*;

@Entity
@Table(name = "suspension_brakes", schema = "carstar_db", catalog = "")
public class EntitySuspensionBrakes {
    @Basic
    @Column(name = "car_id_fk")
    private Integer carIdFk;
    @Basic
    @Column(name = "rear_brakes")
    private String rearBrakes;
    @Basic
    @Column(name = "front_brakes")
    private String frontBrakes;
    @Basic
    @Column(name = "back_suspension")
    private String backSuspension;
    @Basic
    @Column(name = "front_suspension")
    private String frontSuspension;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "suspension_brakes_id")
    private int suspensionBrakesId;
    @ManyToOne
    @JoinColumn(name = "car_id_fk", referencedColumnName = "car_id")
    private EntityCar carByCarIdFk;

    public Integer getCarIdFk() {
        return carIdFk;
    }

    public void setCarIdFk(Integer carIdFk) {
        this.carIdFk = carIdFk;
    }

    public String getRearBrakes() {
        return rearBrakes;
    }

    public void setRearBrakes(String rearBrakes) {
        this.rearBrakes = rearBrakes;
    }

    public String getFrontBrakes() {
        return frontBrakes;
    }

    public void setFrontBrakes(String frontBrakes) {
        this.frontBrakes = frontBrakes;
    }

    public String getBackSuspension() {
        return backSuspension;
    }

    public void setBackSuspension(String backSuspension) {
        this.backSuspension = backSuspension;
    }

    public String getFrontSuspension() {
        return frontSuspension;
    }

    public void setFrontSuspension(String frontSuspension) {
        this.frontSuspension = frontSuspension;
    }

    public int getSuspensionBrakesId() {
        return suspensionBrakesId;
    }

    public void setSuspensionBrakesId(int suspensionBrakesId) {
        this.suspensionBrakesId = suspensionBrakesId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntitySuspensionBrakes that = (EntitySuspensionBrakes) o;

        if (suspensionBrakesId != that.suspensionBrakesId) return false;
        if (carIdFk != null ? !carIdFk.equals(that.carIdFk) : that.carIdFk != null) return false;
        if (rearBrakes != null ? !rearBrakes.equals(that.rearBrakes) : that.rearBrakes != null) return false;
        if (frontBrakes != null ? !frontBrakes.equals(that.frontBrakes) : that.frontBrakes != null) return false;
        if (backSuspension != null ? !backSuspension.equals(that.backSuspension) : that.backSuspension != null)
            return false;
        if (frontSuspension != null ? !frontSuspension.equals(that.frontSuspension) : that.frontSuspension != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = carIdFk != null ? carIdFk.hashCode() : 0;
        result = 31 * result + (rearBrakes != null ? rearBrakes.hashCode() : 0);
        result = 31 * result + (frontBrakes != null ? frontBrakes.hashCode() : 0);
        result = 31 * result + (backSuspension != null ? backSuspension.hashCode() : 0);
        result = 31 * result + (frontSuspension != null ? frontSuspension.hashCode() : 0);
        result = 31 * result + suspensionBrakesId;
        return result;
    }

    public EntityCar getCarByCarIdFk() {
        return carByCarIdFk;
    }

    public void setCarByCarIdFk(EntityCar carByCarIdFk) {
        this.carByCarIdFk = carByCarIdFk;
    }
}
