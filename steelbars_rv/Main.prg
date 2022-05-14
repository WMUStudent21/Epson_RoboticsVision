Function main
	Boolean bFound
	Real rX, rY, rU
	Integer iCount, Count
	Count = 0

	Init
	Tool 0
	Jump ptHome
	VRun FindBar
	VGet FindBar.Blob01.NumberOfResults, iCount
		
		
		For Count = 1 To iCount
			
			VGet FindBar.Blob01.RobotXYU(Count), bFound, rX, rY, rU
			If bFound Then
				Pick = XY(rX, rY, -95.8, rU) /R
					
				Jump Pick
				Jump ApproachStrip
				Move StripUnder
				Move StripFinal
			EndIf
		
			
		Next
	
	Jump ptHome
	
Fend
Function Init
	
	Reset
	Motor On
	Power High
	Speed 30
	Accel 50, 50
	
Fend

