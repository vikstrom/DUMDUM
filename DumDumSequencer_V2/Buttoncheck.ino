void bouncerUpdate()
{
  ///Reset buttons to make sure they're LOW for just one cycle//
  //////////////////////////////////////////////////////////
  voiceSelectBassState = HIGH;
  voiceSelectSnareState = HIGH;
  playStopState = HIGH;
  tapTempoButtonState = HIGH;
///////////////////////////////////////////////////////////

////////Debounce///////////////////////////////////////////
///////////////////////////////////////////////////////////
tapTempoBouncer.update();
  tapTempoButtonState = tapTempoBouncer.read();
  
  if( tapTempoButtonState == buttonPress && tapTempoButtonStateLast == HIGH )
  {
    tapTempoButtonState = LOW;
    tapTempoButtonStateLast = LOW;
    //Serial.print("******CHECK****LOW***");
  }
  
  else if( tapTempoButtonState == !buttonPress )
  {
     //Serial.print("******CHECK****HIGH***");
    tapTempoButtonStateLast = HIGH;
  }
  
  return;
  
}





















/*void buttonCheck()
{
  ///////////Debounce///////////////
  ////////////////////////////////
  if (voiceSelectBassState != voiceSelectBassStateLast) {
    // reset the debouncing timer
    lastDebounceTime = millis();
  } 
  
  if ((millis() - lastDebounceTime) > debounceDelay) {
    // whatever the reading is at, it's been there for longer
    // than the debounce delay, so take it as the actual current state:
    voiceSelectBassState = voiceSelectBassState;
  }

  voiceSelectBassStateLast = voiceSelectBassState;
}

    //Check if button is being hold/////////////////////
  ////////////////////////////////////////////////////
  if(voiceSelectBassState == LOW && voiceSelectBassStateCheck == HIGH)
  {
    voiceSelectBassState = LOW;
    voiceSelectBassCheck = LOW;  
  } 
  
  else if(voiceSelectBassState = LOW && voiceSelectBassStateLast == LOW)
  {
    voiceSelectBassState = HIGH;
    voiceSelectBassStateCheck = 
  }
  
 
/////////////////////////////////////////////////////////  
  

}*/
