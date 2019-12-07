
DELIMITER $$
CREATE DEFINER=`userdan`@`73.160.180.151` PROCEDURE `usp_SetTournamentLocations`()
BEGIN
/*
Drop  Table  TournamentLocations  

Create Table  TournamentLocations  
( 
  RoundID int  ,
  Sequence int,
  TournamentID int , 
  TournamentLocationID int auto_increment ,
   primary key(TournamentLocationID)
) ;
  */
/*Declare @CurrentRound as int */
Set @CurrentRound = (Select Min(RoundNumber) from Rounds );
/*Declare @LocationSequenceCount as int
Declare @CurrentSequence  as int 
1_to_5_counter: WHILE counter <= 5 DO                         
    SET str = CONCAT(str,counter,',');                         
    SET counter = counter + 1;              
END WHILE 1_to_5_counter; 

*/

BuildRounds : While @CurrentRound <= (Select Max(RoundNumber) from Rounds ) DO
Set @LocationSequenceCount   = (Select SequenceCOunt From Rounds Where RoundNumber  = @CurrentRound);
Set @CurrentSequence   = 1 ;

BuildSequences: While @CurrentSequence <= @LocationSequenceCount  DO 

insert into TournamentLocations (TournamentID, RoundID ,sequence ) 
Select Distinct   (Select TournamentID From Tournaments Where TournamentName) as TournamentID , (Select RoundNumber From Rounds Where RoundNumber =@CurrentRound ) ,@CurrentSequence ;

Set @CurrentSequence   = @CurrentSequence + 1 ;
END WHILE   BuildSequences;


Set @CurrentRound = @CurrentRound  + 1 ;

End While  BuildRounds;

END

/*
CALL `data_collection_sandbox`.`usp_SetTournamentLocations`(); 


*/


