void buttonCheck()
{
  tapTempoButtonState = !buttonPressed;
  buttonCheckTapTempo();

}

void buttonCheckTapTempo()
{
     tapTempoBouncer.update();
 
     if ( tapTempoBouncer.read() == buttonPressed && tapTempoButtonStateLast == !buttonPressed) {
       tapTempoButtonState = buttonPressed;
       tapTempoButtonStateLast = tapTempoButtonState;
     }
     
     else if( tapTempoBouncer.read() == !buttonPressed )
     {
       tapTempoButtonState = !buttonPressed;
       tapTempoButtonStateLast = tapTempoButtonState;
     }
}

