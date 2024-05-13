CREATE TABLE `data_platform_port_ferry_line_data`
(
  `Port`                             int(16) NOT NULL,
  `FerryLine`                        int(16) NOT NULL,
  `ValidityStartDate`                date NOT NULL,
  `ValidityEndDate`                  date NOT NULL,
  `CreationDate`                     date NOT NULL,
  `CreationTime`                     time NOT NULL,
  `LastChangeDate`                   date NOT NULL,
  `LastChangeTime`                   time NOT NULL,
  `CreateUser`                       int(12) NOT NULL,
  `LastChangeUser`                   int(12) NOT NULL,
  `IsReleased`                       tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`              tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Port`, `FerryLine`),

    CONSTRAINT `DPFMPortFerryLineData_fk` FOREIGN KEY (`Port`) REFERENCES `data_platform_port_header_data` (`Port`),
    CONSTRAINT `DPFMPortFerryLineDataFerryLine_fk` FOREIGN KEY (`FerryLine`) REFERENCES `data_platform_ferry_line_header_data` (`FerryLine`),
    CONSTRAINT `DPFMPortFerryLineDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMPortFerryLineDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
