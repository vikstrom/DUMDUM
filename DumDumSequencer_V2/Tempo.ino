/*void tempoCalc() //Calculating tempoDelay
{
  tempoDelay = tempo / 60;
  tempoDelay = 1000 / tempoDelay; //Delay in msec 1000*(1/tempoDelay)
 
  if(tempoCalcCount == 0)  //Flash led first time, do not wait for tempoDelay in timerTempo.
  {
    tempoFlash();
    tempoCalcCount++;
  }
  
 }*/
 
 void tempoFlash()
 {
   digitalWrite(tempoLed, HIGH);
   delay(5);
   digitalWrite(tempoLed, LOW);
   
 }
 
 void tapTempoCalc()
 {
   currentTime = millis();
   tapArray[tapCounter] = currentTime;
   if(tapCounter == 3)
   {
     tempoDelay = (tapArray[3] - tapArray[0])/4;
   }
   
   else if(tapCounter < 3)
   {
     tapCounter++;
     return;
   }
   
   else
   {
     resetTapCounter;
   }
 }
 
 void resetTapCounter()
 {
  tapCounter = 0;
 }
