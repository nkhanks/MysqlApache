CREATE TABLE `domains` (
  `DomainID` varchar(255) NOT NULL,
  `dom_name` varchar(250) NOT NULL,
  `ParentID` varchar(255) DEFAULT NULL,
  `is_subdomain` tinyint(1) DEFAULT '0',
  `is_unquie` tinyint(1) NOT NULL,
  `register_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


ALTER TABLE `domains`
  ADD PRIMARY KEY (`DomainID`),
  ADD UNIQUE KEY `dom_name` (`dom_name`);
  
ALTER TABLE `domains` CHANGE `register_on` `register_on` DATETIME NULL DEFAULT CURRENT_TIMESTAMP;
