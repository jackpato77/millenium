SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `dbmillenium` ;
CREATE SCHEMA IF NOT EXISTS `dbmillenium` DEFAULT CHARACTER SET latin1 ;
USE `dbmillenium` ;

-- -----------------------------------------------------
-- Table `dbmillenium`.`articulos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`articulos` (
  `id` INT(10) NOT NULL ,
  `nombre` VARCHAR(60) NULL DEFAULT NULL ,
  `costo` DECIMAL(10,4) NULL DEFAULT NULL ,
  `um` VARCHAR(10) NULL DEFAULT NULL ,
  `rubro_id` INT(11) NULL DEFAULT NULL ,
  `subrubro_id` INT(11) NULL DEFAULT NULL ,
  `descripcion` VARCHAR(240) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`articulos1`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`articulos1` (
  `id` INT(10) NOT NULL ,
  `nombre` VARCHAR(60) NULL DEFAULT NULL ,
  `costo` DECIMAL(10,4) NULL DEFAULT NULL ,
  `um` VARCHAR(10) NULL DEFAULT NULL ,
  `categoria_id` INT(11) NULL DEFAULT NULL ,
  `descripcion` VARCHAR(240) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`categorias`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`categorias` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(50) NULL DEFAULT NULL ,
  `parent` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 122
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`clientes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`clientes` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(100) NULL DEFAULT NULL ,
  `cuit` VARCHAR(12) NULL DEFAULT NULL ,
  `domicilio` VARCHAR(150) NULL DEFAULT NULL ,
  `telefono` VARCHAR(15) NULL DEFAULT NULL ,
  `condicion_iva` VARCHAR(15) NULL DEFAULT NULL ,
  `contacto` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 54
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`detalles`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`detalles` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `pedido_id` INT(10) NULL DEFAULT NULL ,
  `articulo_id` INT(10) NULL DEFAULT NULL ,
  `cantidad` INT(10) NULL DEFAULT NULL ,
  `base` INT(10) NULL DEFAULT NULL ,
  `alto` INT(10) NULL DEFAULT NULL ,
  `precio` DECIMAL(10,2) NULL DEFAULT NULL ,
  `estado` VARCHAR(1) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `PEDIDO` (`pedido_id` ASC) )
ENGINE = InnoDB
AUTO_INCREMENT = 120
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`empleados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`empleados` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(150) NULL DEFAULT NULL ,
  `cuil` VARCHAR(15) NULL DEFAULT NULL ,
  `domicilio` VARCHAR(150) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`estados`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`estados` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`pagos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`pagos` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `venta_id` INT(10) NULL DEFAULT '0' ,
  `formapago_id` INT(10) NULL DEFAULT '0' ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`pedidos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`pedidos` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `nro` INT(10) NULL DEFAULT '0' ,
  `cliente_id` INT(10) NULL DEFAULT '0' ,
  `fecha` DATE NULL DEFAULT NULL ,
  `fecha_ingreso` DATETIME NULL DEFAULT NULL ,
  `fecha_requerido` DATE NULL DEFAULT NULL ,
  `estado_id` INT(10) NULL DEFAULT '1' ,
  `comentario` TINYTEXT NULL DEFAULT NULL ,
  `empleado_id` INT(11) NULL DEFAULT NULL ,
  `monto` DECIMAL(10,2) NULL DEFAULT NULL ,
  `tipo` VARCHAR(20) NULL DEFAULT NULL ,
  `dcto` DECIMAL(10,2) NULL DEFAULT NULL ,
  `factura_nro` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) ,
  UNIQUE INDEX `NRO` (`nro` ASC) )
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`precios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`precios` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `articulo_id` INT(10) NULL DEFAULT NULL ,
  `grupo` VARCHAR(50) NULL DEFAULT NULL ,
  `fecha` DATE NULL DEFAULT NULL ,
  `vcosto1` DECIMAL(8,4) NULL DEFAULT '0.2500' ,
  `vcosto2` DECIMAL(8,4) NULL DEFAULT '0.2500' ,
  `vcosto3` DECIMAL(8,4) NULL DEFAULT '0.2500' ,
  `vcosto4` DECIMAL(8,4) NULL DEFAULT '0.2500' ,
  `deleted` CHAR(1) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 842
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`rubros`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`rubros` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(50) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 28
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`subrubros`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`subrubros` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(150) NULL DEFAULT NULL ,
  `rubro_id` INT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 94
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`tmprubros`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`tmprubros` (
  `id` INT(11) NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(150) NULL DEFAULT NULL ,
  `parent` BIGINT(11) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 121
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`ventas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`ventas` (
  `id` INT(10) NOT NULL AUTO_INCREMENT ,
  `nro` INT(10) NOT NULL DEFAULT '0' ,
  `pedido_id` INT(10) NULL DEFAULT NULL ,
  `fecha` DATETIME NULL DEFAULT NULL ,
  `dcto` DECIMAL(8,4) NULL DEFAULT NULL ,
  `total` DECIMAL(8,2) NULL DEFAULT NULL ,
  `tipo` VARCHAR(10) NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `dbmillenium`.`vmconfig`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbmillenium`.`vmconfig` (
  `nombre` VARCHAR(50) NULL DEFAULT NULL ,
  `valor` INT(10) NULL DEFAULT NULL )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

USE `dbmillenium` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
