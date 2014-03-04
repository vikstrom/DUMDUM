////////////////////////////////////////////////////////////
//Tap tempo code partly based of Scott Lawrence's TapTempo// 
//(http://umlautllama.com/projects/arduino/s/TapTempo.pde)//
////////////////////////////////////////////////////////////


int lastTapState = LOW;  /* the last tap button state */
unsigned long currentTimer[2] = { 500, 500 };  /* array of most recent tap counts */
unsigned long timeoutTime = 0;  /* this is when the timer will trigger next */

unsigned long indicatorTimeout; /* for our fancy "blink" tempo indicator */

void loop()
{
  /* read the button on pin 8, and only pay attention to the
     HIGH-LOW transition so that we only register when the
     button is first pressed down */
  b.update();
  int tapState = b.read();
  //int tapState = digitalRead( 8 );
  if( tapState == LOW && tapState != lastTapState )
  {
    tap(); /* we got a HIGH-LOW transition, call our tap() function */
  }
  lastTapState = tapState; /* keep track of the state */
  
  /* check for timer timeout */
  if( millis() >= timeoutTime )
  {
    /* timeout happened.  clock tick! */
    indicatorTimeout = millis() + 30;  /* this sets the time when LED 13 goes off */
    /* and reschedule the timer to keep the pace */
    rescheduleTimer();
  }
  
  
  /* display the tap blink on LED 13 */
  
    if( millis() < indicatorTimeout ) {
      digitalWrite( 10, HIGH );
    } else {
      digitalWrite( 10, LOW );
    }
  
}

unsigned long lastTap = 0; /* when the last tap happened */
void tap()
{
  /* we keep two of these around to average together later */
  currentTimer[1] = currentTimer[0];
  currentTimer[0] = millis() - lastTap;
  lastTap = millis();
  timeoutTime = 0; /* force the trigger to happen immediately - sync and blink! */
}

void rescheduleTimer()
{
    /* set the timer to go off again when the time reaches the 
       timeout.  The timeout is all of the "currentTimer" values averaged
       together, then added onto the current time.  When that time has been
       reached, the next tick will happen...
    */
    timeoutTime = millis() + ((currentTimer[0] + currentTimer[1])/2);
}
