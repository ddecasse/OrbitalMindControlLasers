/*
Drop table data_collection_sandbox.Contestants

CREATE TABLE `Contestants` (
  `ContestantName` varchar(100)   DEFAULT NULL,
  `ContestantURL` varchar(500)   DEFAULT NULL,
  `ContestantID` int(11) NOT NULL AUTO_INCREMENT,
  `TournamentID` int(11) NOT NULL ,
  PRIMARY KEY (`ContestantID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
*/

DELIMITER $$
Create DEFINER=`userdan`@`73.160.180.151` PROCEDURE `usp_FillContestants`( IN TournamentID int(11))
BEGIN

Set @Counter = 1; 
 
FillContestants: While @Counter <= 64 DO
insert into Contestants( ContestantName,TournamentID) values(concat('ContestName :' , cast( @counter as char(10))),TournamentID);

Set @Counter = @Counter  + 1 ;

End While  FillContestants;

END$$
DELIMITER ;

/*
CALL `data_collection_sandbox`.`usp_FillContestants`(1);
truncate table Contestants 
Select * From Contestants 

DROP PROCEDURE `data_collection_sandbox`.`usp_FillContestants`;


*/

