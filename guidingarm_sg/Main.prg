Function main

Reset
Motor On
Power High

Speed 80
Accel 80, 80

SpeedS 1600
AccelS 6000, 6000

'Tool 1

'      Wait GetRobotInsideBox(1)
      Jump WaitSpot
      
      CP On
      
      Call Border
      Call Drawing
                  
      Jump WaitSpot
      
      

Fend
Function Border
	
	 'Box borders
      Jump BNW
      Move BSW
      Go BSE
      Move BSW
      Go BNW
      Go BNE
      Move BSE
      Go BNE
      Move BNW
      
Fend
Function Drawing
	
	Integer Process
    Process = 1
	Do While Process < 4
      
          Wait Sw(ok2dispense)
          On ok2inspect
          
          If Sw(adCamera) = On Then GoTo LetterP
          
          On dipsense
          Wait .5
          
	      LetterE:
	      Jump E1
	      Move E2
	      Move E4
	      Move E5
	      Jump E6
	      Move E3
	      
	      Process = Process + 1
          
          Off dipsense
          Wait .5
      Loop
            
      LetterP:
      Jump PP1
      Move PP3
      Move PP4
      Arc PP5, PP6
      Move PP2
      
      'Letter S'
      Jump S1
      Move S2
      Arc S3, S4
      Move S5
      Move S7
      Move S8
      Arc S9, S10
      Move S11
Fend
Function ValvePallet
	
	Reset
	Motor On
	Power High
	
	Speed 80
	Accel 80, 80
	
	SpeedS 1600
	AccelS 6000, 6000
	
	Integer Valve
	Valve = 1
	
	Pallet 1, valve_origin, valve_xmax, valve_ymax, 3, 3
			
    TmReset (0)
    LimZ -70
	
	Do While Valve < 10
	    Jump Pallet(1, Valve)
	    Valve = Valve + 1
	Loop
	
	Print Tmr(0)
Fend

