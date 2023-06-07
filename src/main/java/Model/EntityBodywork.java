package Model;

import jakarta.persistence.*;

@Entity
@Table(name = "bodywork", schema = "carstar_db", catalog = "")
public class EntityBodywork {
    @Basic
    @Column(name = "car_id")
    private Integer carId;
    @Basic
    @Column(name = "rear_track")
    private Integer rearTrack;
    @Basic
    @Column(name = "width")
    private Integer width;
    @Basic
    @Column(name = "curb_weight")
    private Integer curbWeight;
    @Basic
    @Column(name = "length")
    private Integer length;
    @Basic
    @Column(name = "nb_seats")
    private Integer nbSeats;
    @Basic
    @Column(name = "max_trunk_capacity")
    private Integer maxTrunkCapacity;
    @Basic
    @Column(name = "body_type")
    private String bodyType;
    @Basic
    @Column(name = "height")
    private Integer height;
    @Basic
    @Column(name = "payload")
    private Integer payload;
    @Basic
    @Column(name = "front_track")
    private Integer frontTrack;
    @Basic
    @Column(name = "wheelbase")
    private Integer wheelbase;
    @Basic
    @Column(name = "ground_clearance")
    private Integer groundClearance;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "bodywork_id")
    private int bodyworkId;

    public Integer getCarId() {
        return carId;
    }

    public void setCarId(Integer carId) {
        this.carId = carId;
    }

    public Integer getRearTrack() {
        return rearTrack;
    }

    public void setRearTrack(Integer rearTrack) {
        this.rearTrack = rearTrack;
    }

    public Integer getWidth() {
        return width;
    }

    public void setWidth(Integer width) {
        this.width = width;
    }

    public Integer getCurbWeight() {
        return curbWeight;
    }

    public void setCurbWeight(Integer curbWeight) {
        this.curbWeight = curbWeight;
    }

    public Integer getLength() {
        return length;
    }

    public void setLength(Integer length) {
        this.length = length;
    }

    public Integer getNbSeats() {
        return nbSeats;
    }

    public void setNbSeats(Integer nbSeats) {
        this.nbSeats = nbSeats;
    }

    public Integer getMaxTrunkCapacity() {
        return maxTrunkCapacity;
    }

    public void setMaxTrunkCapacity(Integer maxTrunkCapacity) {
        this.maxTrunkCapacity = maxTrunkCapacity;
    }

    public String getBodyType() {
        return bodyType;
    }

    public void setBodyType(String bodyType) {
        this.bodyType = bodyType;
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public Integer getPayload() {
        return payload;
    }

    public void setPayload(Integer payload) {
        this.payload = payload;
    }

    public Integer getFrontTrack() {
        return frontTrack;
    }

    public void setFrontTrack(Integer frontTrack) {
        this.frontTrack = frontTrack;
    }

    public Integer getWheelbase() {
        return wheelbase;
    }

    public void setWheelbase(Integer wheelbase) {
        this.wheelbase = wheelbase;
    }

    public Integer getGroundClearance() {
        return groundClearance;
    }

    public void setGroundClearance(Integer groundClearance) {
        this.groundClearance = groundClearance;
    }

    public int getBodyworkId() {
        return bodyworkId;
    }

    public void setBodyworkId(int bodyworkId) {
        this.bodyworkId = bodyworkId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntityBodywork that = (EntityBodywork) o;

        if (bodyworkId != that.bodyworkId) return false;
        if (carId != null ? !carId.equals(that.carId) : that.carId != null) return false;
        if (rearTrack != null ? !rearTrack.equals(that.rearTrack) : that.rearTrack != null) return false;
        if (width != null ? !width.equals(that.width) : that.width != null) return false;
        if (curbWeight != null ? !curbWeight.equals(that.curbWeight) : that.curbWeight != null) return false;
        if (length != null ? !length.equals(that.length) : that.length != null) return false;
        if (nbSeats != null ? !nbSeats.equals(that.nbSeats) : that.nbSeats != null) return false;
        if (maxTrunkCapacity != null ? !maxTrunkCapacity.equals(that.maxTrunkCapacity) : that.maxTrunkCapacity != null)
            return false;
        if (bodyType != null ? !bodyType.equals(that.bodyType) : that.bodyType != null) return false;
        if (height != null ? !height.equals(that.height) : that.height != null) return false;
        if (payload != null ? !payload.equals(that.payload) : that.payload != null) return false;
        if (frontTrack != null ? !frontTrack.equals(that.frontTrack) : that.frontTrack != null) return false;
        if (wheelbase != null ? !wheelbase.equals(that.wheelbase) : that.wheelbase != null) return false;
        if (groundClearance != null ? !groundClearance.equals(that.groundClearance) : that.groundClearance != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = carId != null ? carId.hashCode() : 0;
        result = 31 * result + (rearTrack != null ? rearTrack.hashCode() : 0);
        result = 31 * result + (width != null ? width.hashCode() : 0);
        result = 31 * result + (curbWeight != null ? curbWeight.hashCode() : 0);
        result = 31 * result + (length != null ? length.hashCode() : 0);
        result = 31 * result + (nbSeats != null ? nbSeats.hashCode() : 0);
        result = 31 * result + (maxTrunkCapacity != null ? maxTrunkCapacity.hashCode() : 0);
        result = 31 * result + (bodyType != null ? bodyType.hashCode() : 0);
        result = 31 * result + (height != null ? height.hashCode() : 0);
        result = 31 * result + (payload != null ? payload.hashCode() : 0);
        result = 31 * result + (frontTrack != null ? frontTrack.hashCode() : 0);
        result = 31 * result + (wheelbase != null ? wheelbase.hashCode() : 0);
        result = 31 * result + (groundClearance != null ? groundClearance.hashCode() : 0);
        result = 31 * result + bodyworkId;
        return result;
    }
}
