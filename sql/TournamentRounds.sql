
/*Select * From Contestants */
Select TL.* ,C.*
From TournamentLocations TL 
left join Contestants C  
on TL.TournamentID - C.TournamentID;


Select C.*,TL.*
From Contestants C  
left join TournamentLocations TL 
on C.TournamentID - TL.TournamentID;