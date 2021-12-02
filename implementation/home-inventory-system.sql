-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/A0NZtR
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `user` (
    `userID` int AUTO_INCREMENT NOT NULL ,
    `name` text  NOT NULL ,
    `email` varchar(50)  NOT NULL ,
    PRIMARY KEY (
        `userID`
    )
);

CREATE TABLE `item` (
    `itemID` int AUTO_INCREMENT NOT NULL ,
    `userID` int  NOT NULL ,
    `supplierID` int  NOT NULL ,
    `quantity` int  NOT NULL ,
    `desired` int  NOT NULL ,
    `signal` int  NOT NULL ,
    PRIMARY KEY (
        `itemID`
    )
);

CREATE TABLE `supplier` (
    `supplierID` int AUTO_INCREMENT NOT NULL ,
    `userID` int  NOT NULL ,
    `description` char(20)  NOT NULL ,
    `location` char(86)  NOT NULL ,
    PRIMARY KEY (
        `supplierID`
    )
);

ALTER TABLE `item` ADD CONSTRAINT `fk_item_userID` FOREIGN KEY(`userID`)
REFERENCES `user` (`userID`);

ALTER TABLE `item` ADD CONSTRAINT `fk_item_supplierID` FOREIGN KEY(`supplierID`)
REFERENCES `supplier` (`supplierID`);

ALTER TABLE `supplier` ADD CONSTRAINT `fk_supplier_userID` FOREIGN KEY(`userID`)
REFERENCES `user` (`userID`);

