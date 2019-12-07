/* Drop table Rounds 

Create  Table Rounds  
(
SequenceCount int,
RoundNumber int auto_increment ,
   primary key(RoundNumber)
)
*/
/*DELIMITER $$
CREATE DEFINER=`userdan`@`73.160.180.151` PROCEDURE `while_loop_proc`()
BEGIN
DECLARE counter  INT;             
DECLARE str      VARCHAR(255);             
SET     counter  = 1;              
SET     str      = '';             
1_to_5_counter: WHILE counter <= 5 DO                         
    SET str = CONCAT(str,counter,',');                         
    SET counter = counter + 1;              
END WHILE 1_to_5_counter;             
SELECT LEFT(str, LENGTH(str) - 1); -- remove trailing comma
END$$
DELIMITER ;

insert into Rounds(SequenceCount) values(32);
insert into Rounds(SequenceCount) values(16);
insert into Rounds(SequenceCount) values(8);
insert into Rounds(SequenceCount) values(4);
insert into Rounds(SequenceCount) values(2);
insert into Rounds(SequenceCount) values(1);
*/

Select * From Rounds 