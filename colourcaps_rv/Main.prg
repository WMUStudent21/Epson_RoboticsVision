Function AutomateCaps
	Boolean bFound
	Real rX, rY, rU
	Integer Count
	Count = 0

	Init
	Tool 1
	
	Do While Count < 3
		Jump ptHome
		VRun FindCap
		VGet FindCap.Geom01.RobotXYU, bFound, rX, rY, rU
		
		Pick = XY(rX, rY, -90.65, rU) /R
		
		Jump Pick
		Jump ApproachStrip
		Move StripUnder
		Move StripFinal
		
		Count = Count + 1
	Loop
	
	Jump ptHome
	
Fend
Function Init
	
	Reset
	Motor On
	Power High
	Speed 30
	Accel 50, 50
	
Fend

