-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema f1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema f1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `f1` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `f1` ;

-- -----------------------------------------------------
-- Table `f1`.`circuit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`circuit` (
  `circuitId` INT NOT NULL,
  `circuitRef` VARCHAR(255) NULL,
  `name` VARCHAR(255) NULL,
  `location` VARCHAR(255) NULL,
  `country` VARCHAR(255) NULL,
  `lat` FLOAT NULL,
  `lng` FLOAT NULL,
  `alt` VARCHAR(255) NULL,
  `circuitcol` VARCHAR(255) NULL,
  PRIMARY KEY (`circuitId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`constructor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`constructor` (
  `constructorId` INT NOT NULL,
  `constructorRef` VARCHAR(255) NULL,
  `name` VARCHAR(255) NULL,
  `nationality` VARCHAR(255) NULL,
  `url` VARCHAR(255) NULL,
  PRIMARY KEY (`constructorId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`drivers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`drivers` (
  `driverId` INT NOT NULL,
  `driverRef` VARCHAR(255) NULL,
  `number` VARCHAR(255) NULL,
  `code` VARCHAR(255) NULL,
  `forename` VARCHAR(255) NULL,
  `surname` VARCHAR(255) NULL,
  `dob` VARCHAR(255) NULL,
  `nationality` VARCHAR(255) NULL,
  `url` VARCHAR(255) NULL,
  PRIMARY KEY (`driverId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`seasons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`seasons` (
  `year` INT NOT NULL,
  `url` VARCHAR(255) NULL,
  PRIMARY KEY (`year`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`races`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`races` (
  `raceId` INT NOT NULL,
  `year` INT NULL,
  `round` INT NULL,
  `circuitId` INT NULL,
  `name` VARCHAR(255) NULL,
  `date` VARCHAR(255) NULL,
  `time` VARCHAR(255) NULL,
  `url` VARCHAR(255) NULL,
  `fp1_date` VARCHAR(255) NULL,
  `fp1_time` VARCHAR(255) NULL,
  `fp2_date` VARCHAR(255) NULL,
  `fp2_time` VARCHAR(255) NULL,
  `fp3_date` VARCHAR(255) NULL,
  `fp3_time` VARCHAR(255) NULL,
  `quali_date` VARCHAR(255) NULL,
  `quali_time` VARCHAR(255) NULL,
  `sprint_date` VARCHAR(255) NULL,
  `sprint_time` VARCHAR(255) NULL,
  PRIMARY KEY (`raceId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`sprint_results`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`sprint_results` (
  `resultId` INT NOT NULL,
  `raceId` INT NULL,
  `driverId` INT NULL,
  `constructorId` INT NULL,
  `number` INT NULL,
  `grid` INT NULL,
  `position` VARCHAR(255) NULL,
  `positionText` VARCHAR(255) NULL,
  `positionOrder` INT NULL,
  `points` INT NULL,
  `laps` INT NULL,
  `time` VARCHAR(255) NULL,
  `milliseconds` VARCHAR(255) NULL,
  `fastestLap` VARCHAR(255) NULL,
  `fastestLapTime` VARCHAR(255) NULL,
  `statusId` INT NULL,
  PRIMARY KEY (`resultId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`constructor_results`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`constructor_results` (
  `constructorResultsId` INT NOT NULL,
  `raceId` INT NULL,
  `constructorId` INT NULL,
  `points` FLOAT NULL,
  `status` VARCHAR(255) NULL,
  PRIMARY KEY (`constructorResultsId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`constructor_standings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`constructor_standings` (
  `constructorStandingsId` INT NOT NULL,
  `raceId` INT NULL,
  `constructorId` INT NULL,
  `points` VARCHAR(255) NULL,
  `positions` INT NULL,
  `positionsText` VARCHAR(255) NULL,
  `wins` INT NULL,
  PRIMARY KEY (`constructorStandingsId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`driver_standings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`driver_standings` (
  `driverStandingsId` INT NOT NULL,
  `raceId` INT NULL,
  `driverId` INT NULL,
  `pints` FLOAT NULL,
  `position` INT NULL,
  `positionText` VARCHAR(255) NULL,
  `wins` INT NULL,
  PRIMARY KEY (`driverStandingsId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`lap_times`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`lap_times` (
  `raceId` INT NOT NULL,
  `driverId` INT NULL,
  `lap` INT NULL,
  `position` INT NULL,
  `time` VARCHAR(255) NULL,
  `milliseconds` INT NULL,
  PRIMARY KEY (`raceId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`pit_stops`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`pit_stops` (
  `raceId` INT NOT NULL,
  `driverId` INT NULL,
  `stop` INT NULL,
  `lap` INT NULL,
  `time` VARCHAR(255) NULL,
  `duration` VARCHAR(255) NULL,
  `milliseconds` INT NULL,
  `pit_stopscol` VARCHAR(255) NULL,
  PRIMARY KEY (`raceId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`qualifying`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`qualifying` (
  `qualifyingId` INT NOT NULL,
  `raceId` INT NULL,
  `driverId` INT NULL,
  `constructorId` INT NULL,
  `number` INT NULL,
  `position` INT NULL,
  `q1` VARCHAR(255) NULL,
  `q2` VARCHAR(255) NULL,
  `q3` VARCHAR(255) NULL,
  PRIMARY KEY (`qualifyingId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`results`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`results` (
  `resultId` INT NOT NULL,
  `raceId` INT NULL,
  `driverId` INT NULL,
  `constructorId` INT NULL,
  `number` VARCHAR(255) NULL,
  `grid` INT NULL,
  `position` VARCHAR(255) NULL,
  `positionText` VARCHAR(255) NULL,
  `positionOrder` INT NULL,
  `points` FLOAT NULL,
  `laps` INT NULL,
  `time` VARCHAR(255) NULL,
  `milliseconds` VARCHAR(255) NULL,
  `fastestLap` VARCHAR(255) NULL,
  `rank` VARCHAR(255) NULL,
  `fastestLapTime` VARCHAR(255) NULL,
  `FastestLapSpeed` VARCHAR(255) NULL,
  `StatusId` INT NULL,
  PRIMARY KEY (`resultId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `f1`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `f1`.`status` (
  `statusId` INT NOT NULL,
  `status` VARCHAR(255) NULL,
  PRIMARY KEY (`statusId`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
