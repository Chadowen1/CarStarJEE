package Model;

import jakarta.persistence.*;

import java.util.Collection;

@Entity
@Table(name = "car_db", schema = "carstar_db", catalog = "")
public class EntityCarDb {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id_trim")
    private int idTrim;
    @Basic
    @Column(name = "make")
    private String make;
    @Basic
    @Column(name = "model")
    private String model;
    @Basic
    @Column(name = "generation")
    private String generation;
    @Basic
    @Column(name = "year_from")
    private String yearFrom;
    @Basic
    @Column(name = "year_to")
    private String yearTo;
    @Basic
    @Column(name = "series")
    private String series;
    @Basic
    @Column(name = "trim")
    private String trim;
    @Basic
    @Column(name = "body_type")
    private String bodyType;
    @Basic
    @Column(name = "load_height_mm")
    private String loadHeightMm;
    @Basic
    @Column(name = "number_of_seats")
    private String numberOfSeats;
    @Basic
    @Column(name = "length_mm")
    private String lengthMm;
    @Basic
    @Column(name = "width_mm")
    private String widthMm;
    @Basic
    @Column(name = "height_mm")
    private String heightMm;
    @Basic
    @Column(name = "wheelbase_mm")
    private String wheelbaseMm;
    @Basic
    @Column(name = "front_track_mm")
    private String frontTrackMm;
    @Basic
    @Column(name = "rear_track_mm")
    private String rearTrackMm;
    @Basic
    @Column(name = "curb_weight_kg")
    private String curbWeightKg;
    @Basic
    @Column(name = "wheel_size_r14")
    private String wheelSizeR14;
    @Basic
    @Column(name = "ground_clearance_mm")
    private String groundClearanceMm;
    @Basic
    @Column(name = "trailer_load_with_brakes_kg")
    private String trailerLoadWithBrakesKg;
    @Basic
    @Column(name = "payload_kg")
    private String payloadKg;
    @Basic
    @Column(name = "back_track_width_mm")
    private String backTrackWidthMm;
    @Basic
    @Column(name = "front_track_width_mm")
    private String frontTrackWidthMm;
    @Basic
    @Column(name = "clearance_mm")
    private String clearanceMm;
    @Basic
    @Column(name = "full_weight_kg")
    private String fullWeightKg;
    @Basic
    @Column(name = "front_rear_axle_load_kg")
    private String frontRearAxleLoadKg;
    @Basic
    @Column(name = "max_trunk_capacity_l")
    private String maxTrunkCapacityL;
    @Basic
    @Column(name = "cargo_compartment_length_width_height_mm")
    private String cargoCompartmentLengthWidthHeightMm;
    @Basic
    @Column(name = "cargo_volume_m3")
    private String cargoVolumeM3;
    @Basic
    @Column(name = "minimum_trunk_capacity_l")
    private String minimumTrunkCapacityL;
    @Basic
    @Column(name = "maximum_torque_n_m")
    private String maximumTorqueNM;
    @Basic
    @Column(name = "injection_type")
    private String injectionType;
    @Basic
    @Column(name = "overhead_camshaft")
    private String overheadCamshaft;
    @Basic
    @Column(name = "cylinder_layout")
    private String cylinderLayout;
    @Basic
    @Column(name = "number_of_cylinders")
    private String numberOfCylinders;
    @Basic
    @Column(name = "compression_ratio")
    private String compressionRatio;
    @Basic
    @Column(name = "engine_type")
    private String engineType;
    @Basic
    @Column(name = "valves_per_cylinder")
    private String valvesPerCylinder;
    @Basic
    @Column(name = "boost_type")
    private String boostType;
    @Basic
    @Column(name = "cylinder_bore_mm")
    private String cylinderBoreMm;
    @Basic
    @Column(name = "stroke_cycle_mm")
    private String strokeCycleMm;
    @Basic
    @Column(name = "engine_placement")
    private String enginePlacement;
    @Basic
    @Column(name = "cylinder_bore_and_stroke_cycle_mm")
    private String cylinderBoreAndStrokeCycleMm;
    @Basic
    @Column(name = "turnover_of_maximum_torque_rpm")
    private String turnoverOfMaximumTorqueRpm;
    @Basic
    @Column(name = "max_power_kw")
    private String maxPowerKw;
    @Basic
    @Column(name = "presence_of_intercooler")
    private String presenceOfIntercooler;
    @Basic
    @Column(name = "capacity_cm3")
    private String capacityCm3;
    @Basic
    @Column(name = "engine_hp")
    private String engineHp;
    @Basic
    @Column(name = "engine_hp_rpm")
    private String engineHpRpm;
    @Basic
    @Column(name = "drive_wheels")
    private String driveWheels;
    @Basic
    @Column(name = "bore_stroke_ratio")
    private String boreStrokeRatio;
    @Basic
    @Column(name = "number_of_gears")
    private String numberOfGears;
    @Basic
    @Column(name = "turning_circle_m")
    private String turningCircleM;
    @Basic
    @Column(name = "transmission")
    private String transmission;
    @Basic
    @Column(name = "mixed_fuel_consumption_per_100_km_l")
    private String mixedFuelConsumptionPer100KmL;
    @Basic
    @Column(name = "range_km")
    private String rangeKm;
    @Basic
    @Column(name = "emission_standards")
    private String emissionStandards;
    @Basic
    @Column(name = "fuel_tank_capacity_l")
    private String fuelTankCapacityL;
    @Basic
    @Column(name = "acceleration_0_100_km/h_s")
    private String acceleration0100KmHS;
    @Basic
    @Column(name = "max_speed_km_per_h")
    private String maxSpeedKmPerH;
    @Basic
    @Column(name = "city_fuel_per_100km_l")
    private String cityFuelPer100KmL;
    @Basic
    @Column(name = "CO2_emissions_g/km")
    private String co2EmissionsGKm;
    @Basic
    @Column(name = "fuel_grade")
    private String fuelGrade;
    @Basic
    @Column(name = "highway_fuel_per_100km_l")
    private String highwayFuelPer100KmL;
    @Basic
    @Column(name = "back_suspension")
    private String backSuspension;
    @Basic
    @Column(name = "rear_brakes")
    private String rearBrakes;
    @Basic
    @Column(name = "front_brakes")
    private String frontBrakes;
    @Basic
    @Column(name = "front_suspension")
    private String frontSuspension;
    @Basic
    @Column(name = "steering_type")
    private String steeringType;
    @Basic
    @Column(name = "car_class")
    private String carClass;
    @Basic
    @Column(name = "country_of_origin")
    private String countryOfOrigin;
    @Basic
    @Column(name = "number_of_doors")
    private String numberOfDoors;
    @Basic
    @Column(name = "safety_assessment")
    private String safetyAssessment;
    @Basic
    @Column(name = "rating_name")
    private String ratingName;
    @Basic
    @Column(name = "battery_capacity_KW_per_h")
    private String batteryCapacityKwPerH;
    @Basic
    @Column(name = "electric_range_km")
    private String electricRangeKm;
    @Basic
    @Column(name = "charging_time_h")
    private String chargingTimeH;

    public int getIdTrim() {
        return idTrim;
    }

    public void setIdTrim(int idTrim) {
        this.idTrim = idTrim;
    }

    public String getMake() {
        return make;
    }

    public void setMake(String make) {
        this.make = make;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getGeneration() {
        return generation;
    }

    public void setGeneration(String generation) {
        this.generation = generation;
    }

    public String getYearFrom() {
        return yearFrom;
    }

    public void setYearFrom(String yearFrom) {
        this.yearFrom = yearFrom;
    }

    public String getYearTo() {
        return yearTo;
    }

    public void setYearTo(String yearTo) {
        this.yearTo = yearTo;
    }

    public String getSeries() {
        return series;
    }

    public void setSeries(String series) {
        this.series = series;
    }

    public String getTrim() {
        return trim;
    }

    public void setTrim(String trim) {
        this.trim = trim;
    }

    public String getBodyType() {
        return bodyType;
    }

    public void setBodyType(String bodyType) {
        this.bodyType = bodyType;
    }

    public String getLoadHeightMm() {
        return loadHeightMm;
    }

    public void setLoadHeightMm(String loadHeightMm) {
        this.loadHeightMm = loadHeightMm;
    }

    public String getNumberOfSeats() {
        return numberOfSeats;
    }

    public void setNumberOfSeats(String numberOfSeats) {
        this.numberOfSeats = numberOfSeats;
    }

    public String getLengthMm() {
        return lengthMm;
    }

    public void setLengthMm(String lengthMm) {
        this.lengthMm = lengthMm;
    }

    public String getWidthMm() {
        return widthMm;
    }

    public void setWidthMm(String widthMm) {
        this.widthMm = widthMm;
    }

    public String getHeightMm() {
        return heightMm;
    }

    public void setHeightMm(String heightMm) {
        this.heightMm = heightMm;
    }

    public String getWheelbaseMm() {
        return wheelbaseMm;
    }

    public void setWheelbaseMm(String wheelbaseMm) {
        this.wheelbaseMm = wheelbaseMm;
    }

    public String getFrontTrackMm() {
        return frontTrackMm;
    }

    public void setFrontTrackMm(String frontTrackMm) {
        this.frontTrackMm = frontTrackMm;
    }

    public String getRearTrackMm() {
        return rearTrackMm;
    }

    public void setRearTrackMm(String rearTrackMm) {
        this.rearTrackMm = rearTrackMm;
    }

    public String getCurbWeightKg() {
        return curbWeightKg;
    }

    public void setCurbWeightKg(String curbWeightKg) {
        this.curbWeightKg = curbWeightKg;
    }

    public String getWheelSizeR14() {
        return wheelSizeR14;
    }

    public void setWheelSizeR14(String wheelSizeR14) {
        this.wheelSizeR14 = wheelSizeR14;
    }

    public String getGroundClearanceMm() {
        return groundClearanceMm;
    }

    public void setGroundClearanceMm(String groundClearanceMm) {
        this.groundClearanceMm = groundClearanceMm;
    }

    public String getTrailerLoadWithBrakesKg() {
        return trailerLoadWithBrakesKg;
    }

    public void setTrailerLoadWithBrakesKg(String trailerLoadWithBrakesKg) {
        this.trailerLoadWithBrakesKg = trailerLoadWithBrakesKg;
    }

    public String getPayloadKg() {
        return payloadKg;
    }

    public void setPayloadKg(String payloadKg) {
        this.payloadKg = payloadKg;
    }

    public String getBackTrackWidthMm() {
        return backTrackWidthMm;
    }

    public void setBackTrackWidthMm(String backTrackWidthMm) {
        this.backTrackWidthMm = backTrackWidthMm;
    }

    public String getFrontTrackWidthMm() {
        return frontTrackWidthMm;
    }

    public void setFrontTrackWidthMm(String frontTrackWidthMm) {
        this.frontTrackWidthMm = frontTrackWidthMm;
    }

    public String getClearanceMm() {
        return clearanceMm;
    }

    public void setClearanceMm(String clearanceMm) {
        this.clearanceMm = clearanceMm;
    }

    public String getFullWeightKg() {
        return fullWeightKg;
    }

    public void setFullWeightKg(String fullWeightKg) {
        this.fullWeightKg = fullWeightKg;
    }

    public String getFrontRearAxleLoadKg() {
        return frontRearAxleLoadKg;
    }

    public void setFrontRearAxleLoadKg(String frontRearAxleLoadKg) {
        this.frontRearAxleLoadKg = frontRearAxleLoadKg;
    }

    public String getMaxTrunkCapacityL() {
        return maxTrunkCapacityL;
    }

    public void setMaxTrunkCapacityL(String maxTrunkCapacityL) {
        this.maxTrunkCapacityL = maxTrunkCapacityL;
    }

    public String getCargoCompartmentLengthWidthHeightMm() {
        return cargoCompartmentLengthWidthHeightMm;
    }

    public void setCargoCompartmentLengthWidthHeightMm(String cargoCompartmentLengthWidthHeightMm) {
        this.cargoCompartmentLengthWidthHeightMm = cargoCompartmentLengthWidthHeightMm;
    }

    public String getCargoVolumeM3() {
        return cargoVolumeM3;
    }

    public void setCargoVolumeM3(String cargoVolumeM3) {
        this.cargoVolumeM3 = cargoVolumeM3;
    }

    public String getMinimumTrunkCapacityL() {
        return minimumTrunkCapacityL;
    }

    public void setMinimumTrunkCapacityL(String minimumTrunkCapacityL) {
        this.minimumTrunkCapacityL = minimumTrunkCapacityL;
    }

    public String getMaximumTorqueNM() {
        return maximumTorqueNM;
    }

    public void setMaximumTorqueNM(String maximumTorqueNM) {
        this.maximumTorqueNM = maximumTorqueNM;
    }

    public String getInjectionType() {
        return injectionType;
    }

    public void setInjectionType(String injectionType) {
        this.injectionType = injectionType;
    }

    public String getOverheadCamshaft() {
        return overheadCamshaft;
    }

    public void setOverheadCamshaft(String overheadCamshaft) {
        this.overheadCamshaft = overheadCamshaft;
    }

    public String getCylinderLayout() {
        return cylinderLayout;
    }

    public void setCylinderLayout(String cylinderLayout) {
        this.cylinderLayout = cylinderLayout;
    }

    public String getNumberOfCylinders() {
        return numberOfCylinders;
    }

    public void setNumberOfCylinders(String numberOfCylinders) {
        this.numberOfCylinders = numberOfCylinders;
    }

    public String getCompressionRatio() {
        return compressionRatio;
    }

    public void setCompressionRatio(String compressionRatio) {
        this.compressionRatio = compressionRatio;
    }

    public String getEngineType() {
        return engineType;
    }

    public void setEngineType(String engineType) {
        this.engineType = engineType;
    }

    public String getValvesPerCylinder() {
        return valvesPerCylinder;
    }

    public void setValvesPerCylinder(String valvesPerCylinder) {
        this.valvesPerCylinder = valvesPerCylinder;
    }

    public String getBoostType() {
        return boostType;
    }

    public void setBoostType(String boostType) {
        this.boostType = boostType;
    }

    public String getCylinderBoreMm() {
        return cylinderBoreMm;
    }

    public void setCylinderBoreMm(String cylinderBoreMm) {
        this.cylinderBoreMm = cylinderBoreMm;
    }

    public String getStrokeCycleMm() {
        return strokeCycleMm;
    }

    public void setStrokeCycleMm(String strokeCycleMm) {
        this.strokeCycleMm = strokeCycleMm;
    }

    public String getEnginePlacement() {
        return enginePlacement;
    }

    public void setEnginePlacement(String enginePlacement) {
        this.enginePlacement = enginePlacement;
    }

    public String getCylinderBoreAndStrokeCycleMm() {
        return cylinderBoreAndStrokeCycleMm;
    }

    public void setCylinderBoreAndStrokeCycleMm(String cylinderBoreAndStrokeCycleMm) {
        this.cylinderBoreAndStrokeCycleMm = cylinderBoreAndStrokeCycleMm;
    }

    public String getTurnoverOfMaximumTorqueRpm() {
        return turnoverOfMaximumTorqueRpm;
    }

    public void setTurnoverOfMaximumTorqueRpm(String turnoverOfMaximumTorqueRpm) {
        this.turnoverOfMaximumTorqueRpm = turnoverOfMaximumTorqueRpm;
    }

    public String getMaxPowerKw() {
        return maxPowerKw;
    }

    public void setMaxPowerKw(String maxPowerKw) {
        this.maxPowerKw = maxPowerKw;
    }

    public String getPresenceOfIntercooler() {
        return presenceOfIntercooler;
    }

    public void setPresenceOfIntercooler(String presenceOfIntercooler) {
        this.presenceOfIntercooler = presenceOfIntercooler;
    }

    public String getCapacityCm3() {
        return capacityCm3;
    }

    public void setCapacityCm3(String capacityCm3) {
        this.capacityCm3 = capacityCm3;
    }

    public String getEngineHp() {
        return engineHp;
    }

    public void setEngineHp(String engineHp) {
        this.engineHp = engineHp;
    }

    public String getEngineHpRpm() {
        return engineHpRpm;
    }

    public void setEngineHpRpm(String engineHpRpm) {
        this.engineHpRpm = engineHpRpm;
    }

    public String getDriveWheels() {
        return driveWheels;
    }

    public void setDriveWheels(String driveWheels) {
        this.driveWheels = driveWheels;
    }

    public String getBoreStrokeRatio() {
        return boreStrokeRatio;
    }

    public void setBoreStrokeRatio(String boreStrokeRatio) {
        this.boreStrokeRatio = boreStrokeRatio;
    }

    public String getNumberOfGears() {
        return numberOfGears;
    }

    public void setNumberOfGears(String numberOfGears) {
        this.numberOfGears = numberOfGears;
    }

    public String getTurningCircleM() {
        return turningCircleM;
    }

    public void setTurningCircleM(String turningCircleM) {
        this.turningCircleM = turningCircleM;
    }

    public String getTransmission() {
        return transmission;
    }

    public void setTransmission(String transmission) {
        this.transmission = transmission;
    }

    public String getMixedFuelConsumptionPer100KmL() {
        return mixedFuelConsumptionPer100KmL;
    }

    public void setMixedFuelConsumptionPer100KmL(String mixedFuelConsumptionPer100KmL) {
        this.mixedFuelConsumptionPer100KmL = mixedFuelConsumptionPer100KmL;
    }

    public String getRangeKm() {
        return rangeKm;
    }

    public void setRangeKm(String rangeKm) {
        this.rangeKm = rangeKm;
    }

    public String getEmissionStandards() {
        return emissionStandards;
    }

    public void setEmissionStandards(String emissionStandards) {
        this.emissionStandards = emissionStandards;
    }

    public String getFuelTankCapacityL() {
        return fuelTankCapacityL;
    }

    public void setFuelTankCapacityL(String fuelTankCapacityL) {
        this.fuelTankCapacityL = fuelTankCapacityL;
    }

    public String getAcceleration0100KmHS() {
        return acceleration0100KmHS;
    }

    public void setAcceleration0100KmHS(String acceleration0100KmHS) {
        this.acceleration0100KmHS = acceleration0100KmHS;
    }

    public String getMaxSpeedKmPerH() {
        return maxSpeedKmPerH;
    }

    public void setMaxSpeedKmPerH(String maxSpeedKmPerH) {
        this.maxSpeedKmPerH = maxSpeedKmPerH;
    }

    public String getCityFuelPer100KmL() {
        return cityFuelPer100KmL;
    }

    public void setCityFuelPer100KmL(String cityFuelPer100KmL) {
        this.cityFuelPer100KmL = cityFuelPer100KmL;
    }

    public String getCo2EmissionsGKm() {
        return co2EmissionsGKm;
    }

    public void setCo2EmissionsGKm(String co2EmissionsGKm) {
        this.co2EmissionsGKm = co2EmissionsGKm;
    }

    public String getFuelGrade() {
        return fuelGrade;
    }

    public void setFuelGrade(String fuelGrade) {
        this.fuelGrade = fuelGrade;
    }

    public String getHighwayFuelPer100KmL() {
        return highwayFuelPer100KmL;
    }

    public void setHighwayFuelPer100KmL(String highwayFuelPer100KmL) {
        this.highwayFuelPer100KmL = highwayFuelPer100KmL;
    }

    public String getBackSuspension() {
        return backSuspension;
    }

    public void setBackSuspension(String backSuspension) {
        this.backSuspension = backSuspension;
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

    public String getFrontSuspension() {
        return frontSuspension;
    }

    public void setFrontSuspension(String frontSuspension) {
        this.frontSuspension = frontSuspension;
    }

    public String getSteeringType() {
        return steeringType;
    }

    public void setSteeringType(String steeringType) {
        this.steeringType = steeringType;
    }

    public String getCarClass() {
        return carClass;
    }

    public void setCarClass(String carClass) {
        this.carClass = carClass;
    }

    public String getCountryOfOrigin() {
        return countryOfOrigin;
    }

    public void setCountryOfOrigin(String countryOfOrigin) {
        this.countryOfOrigin = countryOfOrigin;
    }

    public String getNumberOfDoors() {
        return numberOfDoors;
    }

    public void setNumberOfDoors(String numberOfDoors) {
        this.numberOfDoors = numberOfDoors;
    }

    public String getSafetyAssessment() {
        return safetyAssessment;
    }

    public void setSafetyAssessment(String safetyAssessment) {
        this.safetyAssessment = safetyAssessment;
    }

    public String getRatingName() {
        return ratingName;
    }

    public void setRatingName(String ratingName) {
        this.ratingName = ratingName;
    }

    public String getBatteryCapacityKwPerH() {
        return batteryCapacityKwPerH;
    }

    public void setBatteryCapacityKwPerH(String batteryCapacityKwPerH) {
        this.batteryCapacityKwPerH = batteryCapacityKwPerH;
    }

    public String getElectricRangeKm() {
        return electricRangeKm;
    }

    public void setElectricRangeKm(String electricRangeKm) {
        this.electricRangeKm = electricRangeKm;
    }

    public String getChargingTimeH() {
        return chargingTimeH;
    }

    public void setChargingTimeH(String chargingTimeH) {
        this.chargingTimeH = chargingTimeH;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        EntityCarDb that = (EntityCarDb) o;

        if (idTrim != that.idTrim) return false;
        if (make != null ? !make.equals(that.make) : that.make != null) return false;
        if (model != null ? !model.equals(that.model) : that.model != null) return false;
        if (generation != null ? !generation.equals(that.generation) : that.generation != null) return false;
        if (yearFrom != null ? !yearFrom.equals(that.yearFrom) : that.yearFrom != null) return false;
        if (yearTo != null ? !yearTo.equals(that.yearTo) : that.yearTo != null) return false;
        if (series != null ? !series.equals(that.series) : that.series != null) return false;
        if (trim != null ? !trim.equals(that.trim) : that.trim != null) return false;
        if (bodyType != null ? !bodyType.equals(that.bodyType) : that.bodyType != null) return false;
        if (loadHeightMm != null ? !loadHeightMm.equals(that.loadHeightMm) : that.loadHeightMm != null) return false;
        if (numberOfSeats != null ? !numberOfSeats.equals(that.numberOfSeats) : that.numberOfSeats != null)
            return false;
        if (lengthMm != null ? !lengthMm.equals(that.lengthMm) : that.lengthMm != null) return false;
        if (widthMm != null ? !widthMm.equals(that.widthMm) : that.widthMm != null) return false;
        if (heightMm != null ? !heightMm.equals(that.heightMm) : that.heightMm != null) return false;
        if (wheelbaseMm != null ? !wheelbaseMm.equals(that.wheelbaseMm) : that.wheelbaseMm != null) return false;
        if (frontTrackMm != null ? !frontTrackMm.equals(that.frontTrackMm) : that.frontTrackMm != null) return false;
        if (rearTrackMm != null ? !rearTrackMm.equals(that.rearTrackMm) : that.rearTrackMm != null) return false;
        if (curbWeightKg != null ? !curbWeightKg.equals(that.curbWeightKg) : that.curbWeightKg != null) return false;
        if (wheelSizeR14 != null ? !wheelSizeR14.equals(that.wheelSizeR14) : that.wheelSizeR14 != null) return false;
        if (groundClearanceMm != null ? !groundClearanceMm.equals(that.groundClearanceMm) : that.groundClearanceMm != null)
            return false;
        if (trailerLoadWithBrakesKg != null ? !trailerLoadWithBrakesKg.equals(that.trailerLoadWithBrakesKg) : that.trailerLoadWithBrakesKg != null)
            return false;
        if (payloadKg != null ? !payloadKg.equals(that.payloadKg) : that.payloadKg != null) return false;
        if (backTrackWidthMm != null ? !backTrackWidthMm.equals(that.backTrackWidthMm) : that.backTrackWidthMm != null)
            return false;
        if (frontTrackWidthMm != null ? !frontTrackWidthMm.equals(that.frontTrackWidthMm) : that.frontTrackWidthMm != null)
            return false;
        if (clearanceMm != null ? !clearanceMm.equals(that.clearanceMm) : that.clearanceMm != null) return false;
        if (fullWeightKg != null ? !fullWeightKg.equals(that.fullWeightKg) : that.fullWeightKg != null) return false;
        if (frontRearAxleLoadKg != null ? !frontRearAxleLoadKg.equals(that.frontRearAxleLoadKg) : that.frontRearAxleLoadKg != null)
            return false;
        if (maxTrunkCapacityL != null ? !maxTrunkCapacityL.equals(that.maxTrunkCapacityL) : that.maxTrunkCapacityL != null)
            return false;
        if (cargoCompartmentLengthWidthHeightMm != null ? !cargoCompartmentLengthWidthHeightMm.equals(that.cargoCompartmentLengthWidthHeightMm) : that.cargoCompartmentLengthWidthHeightMm != null)
            return false;
        if (cargoVolumeM3 != null ? !cargoVolumeM3.equals(that.cargoVolumeM3) : that.cargoVolumeM3 != null)
            return false;
        if (minimumTrunkCapacityL != null ? !minimumTrunkCapacityL.equals(that.minimumTrunkCapacityL) : that.minimumTrunkCapacityL != null)
            return false;
        if (maximumTorqueNM != null ? !maximumTorqueNM.equals(that.maximumTorqueNM) : that.maximumTorqueNM != null)
            return false;
        if (injectionType != null ? !injectionType.equals(that.injectionType) : that.injectionType != null)
            return false;
        if (overheadCamshaft != null ? !overheadCamshaft.equals(that.overheadCamshaft) : that.overheadCamshaft != null)
            return false;
        if (cylinderLayout != null ? !cylinderLayout.equals(that.cylinderLayout) : that.cylinderLayout != null)
            return false;
        if (numberOfCylinders != null ? !numberOfCylinders.equals(that.numberOfCylinders) : that.numberOfCylinders != null)
            return false;
        if (compressionRatio != null ? !compressionRatio.equals(that.compressionRatio) : that.compressionRatio != null)
            return false;
        if (engineType != null ? !engineType.equals(that.engineType) : that.engineType != null) return false;
        if (valvesPerCylinder != null ? !valvesPerCylinder.equals(that.valvesPerCylinder) : that.valvesPerCylinder != null)
            return false;
        if (boostType != null ? !boostType.equals(that.boostType) : that.boostType != null) return false;
        if (cylinderBoreMm != null ? !cylinderBoreMm.equals(that.cylinderBoreMm) : that.cylinderBoreMm != null)
            return false;
        if (strokeCycleMm != null ? !strokeCycleMm.equals(that.strokeCycleMm) : that.strokeCycleMm != null)
            return false;
        if (enginePlacement != null ? !enginePlacement.equals(that.enginePlacement) : that.enginePlacement != null)
            return false;
        if (cylinderBoreAndStrokeCycleMm != null ? !cylinderBoreAndStrokeCycleMm.equals(that.cylinderBoreAndStrokeCycleMm) : that.cylinderBoreAndStrokeCycleMm != null)
            return false;
        if (turnoverOfMaximumTorqueRpm != null ? !turnoverOfMaximumTorqueRpm.equals(that.turnoverOfMaximumTorqueRpm) : that.turnoverOfMaximumTorqueRpm != null)
            return false;
        if (maxPowerKw != null ? !maxPowerKw.equals(that.maxPowerKw) : that.maxPowerKw != null) return false;
        if (presenceOfIntercooler != null ? !presenceOfIntercooler.equals(that.presenceOfIntercooler) : that.presenceOfIntercooler != null)
            return false;
        if (capacityCm3 != null ? !capacityCm3.equals(that.capacityCm3) : that.capacityCm3 != null) return false;
        if (engineHp != null ? !engineHp.equals(that.engineHp) : that.engineHp != null) return false;
        if (engineHpRpm != null ? !engineHpRpm.equals(that.engineHpRpm) : that.engineHpRpm != null) return false;
        if (driveWheels != null ? !driveWheels.equals(that.driveWheels) : that.driveWheels != null) return false;
        if (boreStrokeRatio != null ? !boreStrokeRatio.equals(that.boreStrokeRatio) : that.boreStrokeRatio != null)
            return false;
        if (numberOfGears != null ? !numberOfGears.equals(that.numberOfGears) : that.numberOfGears != null)
            return false;
        if (turningCircleM != null ? !turningCircleM.equals(that.turningCircleM) : that.turningCircleM != null)
            return false;
        if (transmission != null ? !transmission.equals(that.transmission) : that.transmission != null) return false;
        if (mixedFuelConsumptionPer100KmL != null ? !mixedFuelConsumptionPer100KmL.equals(that.mixedFuelConsumptionPer100KmL) : that.mixedFuelConsumptionPer100KmL != null)
            return false;
        if (rangeKm != null ? !rangeKm.equals(that.rangeKm) : that.rangeKm != null) return false;
        if (emissionStandards != null ? !emissionStandards.equals(that.emissionStandards) : that.emissionStandards != null)
            return false;
        if (fuelTankCapacityL != null ? !fuelTankCapacityL.equals(that.fuelTankCapacityL) : that.fuelTankCapacityL != null)
            return false;
        if (acceleration0100KmHS != null ? !acceleration0100KmHS.equals(that.acceleration0100KmHS) : that.acceleration0100KmHS != null)
            return false;
        if (maxSpeedKmPerH != null ? !maxSpeedKmPerH.equals(that.maxSpeedKmPerH) : that.maxSpeedKmPerH != null)
            return false;
        if (cityFuelPer100KmL != null ? !cityFuelPer100KmL.equals(that.cityFuelPer100KmL) : that.cityFuelPer100KmL != null)
            return false;
        if (co2EmissionsGKm != null ? !co2EmissionsGKm.equals(that.co2EmissionsGKm) : that.co2EmissionsGKm != null)
            return false;
        if (fuelGrade != null ? !fuelGrade.equals(that.fuelGrade) : that.fuelGrade != null) return false;
        if (highwayFuelPer100KmL != null ? !highwayFuelPer100KmL.equals(that.highwayFuelPer100KmL) : that.highwayFuelPer100KmL != null)
            return false;
        if (backSuspension != null ? !backSuspension.equals(that.backSuspension) : that.backSuspension != null)
            return false;
        if (rearBrakes != null ? !rearBrakes.equals(that.rearBrakes) : that.rearBrakes != null) return false;
        if (frontBrakes != null ? !frontBrakes.equals(that.frontBrakes) : that.frontBrakes != null) return false;
        if (frontSuspension != null ? !frontSuspension.equals(that.frontSuspension) : that.frontSuspension != null)
            return false;
        if (steeringType != null ? !steeringType.equals(that.steeringType) : that.steeringType != null) return false;
        if (carClass != null ? !carClass.equals(that.carClass) : that.carClass != null) return false;
        if (countryOfOrigin != null ? !countryOfOrigin.equals(that.countryOfOrigin) : that.countryOfOrigin != null)
            return false;
        if (numberOfDoors != null ? !numberOfDoors.equals(that.numberOfDoors) : that.numberOfDoors != null)
            return false;
        if (safetyAssessment != null ? !safetyAssessment.equals(that.safetyAssessment) : that.safetyAssessment != null)
            return false;
        if (ratingName != null ? !ratingName.equals(that.ratingName) : that.ratingName != null) return false;
        if (batteryCapacityKwPerH != null ? !batteryCapacityKwPerH.equals(that.batteryCapacityKwPerH) : that.batteryCapacityKwPerH != null)
            return false;
        if (electricRangeKm != null ? !electricRangeKm.equals(that.electricRangeKm) : that.electricRangeKm != null)
            return false;
        if (chargingTimeH != null ? !chargingTimeH.equals(that.chargingTimeH) : that.chargingTimeH != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idTrim;
        result = 31 * result + (make != null ? make.hashCode() : 0);
        result = 31 * result + (model != null ? model.hashCode() : 0);
        result = 31 * result + (generation != null ? generation.hashCode() : 0);
        result = 31 * result + (yearFrom != null ? yearFrom.hashCode() : 0);
        result = 31 * result + (yearTo != null ? yearTo.hashCode() : 0);
        result = 31 * result + (series != null ? series.hashCode() : 0);
        result = 31 * result + (trim != null ? trim.hashCode() : 0);
        result = 31 * result + (bodyType != null ? bodyType.hashCode() : 0);
        result = 31 * result + (loadHeightMm != null ? loadHeightMm.hashCode() : 0);
        result = 31 * result + (numberOfSeats != null ? numberOfSeats.hashCode() : 0);
        result = 31 * result + (lengthMm != null ? lengthMm.hashCode() : 0);
        result = 31 * result + (widthMm != null ? widthMm.hashCode() : 0);
        result = 31 * result + (heightMm != null ? heightMm.hashCode() : 0);
        result = 31 * result + (wheelbaseMm != null ? wheelbaseMm.hashCode() : 0);
        result = 31 * result + (frontTrackMm != null ? frontTrackMm.hashCode() : 0);
        result = 31 * result + (rearTrackMm != null ? rearTrackMm.hashCode() : 0);
        result = 31 * result + (curbWeightKg != null ? curbWeightKg.hashCode() : 0);
        result = 31 * result + (wheelSizeR14 != null ? wheelSizeR14.hashCode() : 0);
        result = 31 * result + (groundClearanceMm != null ? groundClearanceMm.hashCode() : 0);
        result = 31 * result + (trailerLoadWithBrakesKg != null ? trailerLoadWithBrakesKg.hashCode() : 0);
        result = 31 * result + (payloadKg != null ? payloadKg.hashCode() : 0);
        result = 31 * result + (backTrackWidthMm != null ? backTrackWidthMm.hashCode() : 0);
        result = 31 * result + (frontTrackWidthMm != null ? frontTrackWidthMm.hashCode() : 0);
        result = 31 * result + (clearanceMm != null ? clearanceMm.hashCode() : 0);
        result = 31 * result + (fullWeightKg != null ? fullWeightKg.hashCode() : 0);
        result = 31 * result + (frontRearAxleLoadKg != null ? frontRearAxleLoadKg.hashCode() : 0);
        result = 31 * result + (maxTrunkCapacityL != null ? maxTrunkCapacityL.hashCode() : 0);
        result = 31 * result + (cargoCompartmentLengthWidthHeightMm != null ? cargoCompartmentLengthWidthHeightMm.hashCode() : 0);
        result = 31 * result + (cargoVolumeM3 != null ? cargoVolumeM3.hashCode() : 0);
        result = 31 * result + (minimumTrunkCapacityL != null ? minimumTrunkCapacityL.hashCode() : 0);
        result = 31 * result + (maximumTorqueNM != null ? maximumTorqueNM.hashCode() : 0);
        result = 31 * result + (injectionType != null ? injectionType.hashCode() : 0);
        result = 31 * result + (overheadCamshaft != null ? overheadCamshaft.hashCode() : 0);
        result = 31 * result + (cylinderLayout != null ? cylinderLayout.hashCode() : 0);
        result = 31 * result + (numberOfCylinders != null ? numberOfCylinders.hashCode() : 0);
        result = 31 * result + (compressionRatio != null ? compressionRatio.hashCode() : 0);
        result = 31 * result + (engineType != null ? engineType.hashCode() : 0);
        result = 31 * result + (valvesPerCylinder != null ? valvesPerCylinder.hashCode() : 0);
        result = 31 * result + (boostType != null ? boostType.hashCode() : 0);
        result = 31 * result + (cylinderBoreMm != null ? cylinderBoreMm.hashCode() : 0);
        result = 31 * result + (strokeCycleMm != null ? strokeCycleMm.hashCode() : 0);
        result = 31 * result + (enginePlacement != null ? enginePlacement.hashCode() : 0);
        result = 31 * result + (cylinderBoreAndStrokeCycleMm != null ? cylinderBoreAndStrokeCycleMm.hashCode() : 0);
        result = 31 * result + (turnoverOfMaximumTorqueRpm != null ? turnoverOfMaximumTorqueRpm.hashCode() : 0);
        result = 31 * result + (maxPowerKw != null ? maxPowerKw.hashCode() : 0);
        result = 31 * result + (presenceOfIntercooler != null ? presenceOfIntercooler.hashCode() : 0);
        result = 31 * result + (capacityCm3 != null ? capacityCm3.hashCode() : 0);
        result = 31 * result + (engineHp != null ? engineHp.hashCode() : 0);
        result = 31 * result + (engineHpRpm != null ? engineHpRpm.hashCode() : 0);
        result = 31 * result + (driveWheels != null ? driveWheels.hashCode() : 0);
        result = 31 * result + (boreStrokeRatio != null ? boreStrokeRatio.hashCode() : 0);
        result = 31 * result + (numberOfGears != null ? numberOfGears.hashCode() : 0);
        result = 31 * result + (turningCircleM != null ? turningCircleM.hashCode() : 0);
        result = 31 * result + (transmission != null ? transmission.hashCode() : 0);
        result = 31 * result + (mixedFuelConsumptionPer100KmL != null ? mixedFuelConsumptionPer100KmL.hashCode() : 0);
        result = 31 * result + (rangeKm != null ? rangeKm.hashCode() : 0);
        result = 31 * result + (emissionStandards != null ? emissionStandards.hashCode() : 0);
        result = 31 * result + (fuelTankCapacityL != null ? fuelTankCapacityL.hashCode() : 0);
        result = 31 * result + (acceleration0100KmHS != null ? acceleration0100KmHS.hashCode() : 0);
        result = 31 * result + (maxSpeedKmPerH != null ? maxSpeedKmPerH.hashCode() : 0);
        result = 31 * result + (cityFuelPer100KmL != null ? cityFuelPer100KmL.hashCode() : 0);
        result = 31 * result + (co2EmissionsGKm != null ? co2EmissionsGKm.hashCode() : 0);
        result = 31 * result + (fuelGrade != null ? fuelGrade.hashCode() : 0);
        result = 31 * result + (highwayFuelPer100KmL != null ? highwayFuelPer100KmL.hashCode() : 0);
        result = 31 * result + (backSuspension != null ? backSuspension.hashCode() : 0);
        result = 31 * result + (rearBrakes != null ? rearBrakes.hashCode() : 0);
        result = 31 * result + (frontBrakes != null ? frontBrakes.hashCode() : 0);
        result = 31 * result + (frontSuspension != null ? frontSuspension.hashCode() : 0);
        result = 31 * result + (steeringType != null ? steeringType.hashCode() : 0);
        result = 31 * result + (carClass != null ? carClass.hashCode() : 0);
        result = 31 * result + (countryOfOrigin != null ? countryOfOrigin.hashCode() : 0);
        result = 31 * result + (numberOfDoors != null ? numberOfDoors.hashCode() : 0);
        result = 31 * result + (safetyAssessment != null ? safetyAssessment.hashCode() : 0);
        result = 31 * result + (ratingName != null ? ratingName.hashCode() : 0);
        result = 31 * result + (batteryCapacityKwPerH != null ? batteryCapacityKwPerH.hashCode() : 0);
        result = 31 * result + (electricRangeKm != null ? electricRangeKm.hashCode() : 0);
        result = 31 * result + (chargingTimeH != null ? chargingTimeH.hashCode() : 0);
        return result;
    }

}
