
void keepTempo()  ///Manages tempoBeat and checks for timeout between taps
{
 
  tempoCurrentState = millis();
    
  if( (tempoCurrentState - tempoLastState) >= tempoDelay){
    tempoBeat();
    tempoLastState = tempoCurrentState;
  }
    
  //Resets tap index if it takes to long to tap
  if( tapState == true && (tempoCurrentState - tapArray[0])  > tempoDelayTimeout ){   
    tempoArrayIndexReset();  
    tapState = false;    
  }
} 

//////////////////////////////////////

void tapTempo()  //Calculating new tempoDelay based on time between taps
{
  tapArray[tempoArrayIndex] = tempoCurrentState;
  
  if( tempoArrayIndex == 1 ){
    tempoDelay = (tapArray[1] - tapArray[0]);
    tempoArrayIndexReset();
    tapState = false;
    }
    else{
    tempoArrayIndex++;
    tapState = true;
    }
  
}

//////////////////////////////////////

void tempoArrayIndexReset()  //Resetting index in tapArray
{
  tempoArrayIndex = 0;
}

//////////////////////////////////////

void tempoBeat()  //Sets tempoClock to true to indicate that current cycle is a "beat cycle"
{
  tempoClock = true;
}

void resetTempoClock()  //Resetting tempoClock to false to indicate that current cycle in NOT a "beat cycle"
{
  tempoClock = false;
}
