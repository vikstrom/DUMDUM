#include <Bounce.h>

#define tapTempoButton 8
#define tempoLed 10
#define debugLed 13

/////buttonCheck variables///
int tapTempoButtonStateLast;
int tapTempoButtonState;
const int buttonPressed = LOW;

////tapTempo variables////
unsigned long tapArray[2] = {0, 0};  //For saving millis() value when tapButton is pressed
boolean tapState = false;  //For checking if a tapTempo calculation is ongoing
int tempoArrayIndex = 0;  //For keeping track of posistion in tapArray
unsigned long tempoDelay = 500;  //Defining tempoDelay to controll state of tempoClock
unsigned long tempoCurrentState;  //Checking if tempoDelay has passed
unsigned long tempoLastState = 0;  //Checking if tempoDelay time has passed
boolean tempoClock;  //Telling all functions if current cycle has a tempoBeat or not
unsigned long tempoDelayTimeout = 2000;  //Sets maximum wait-time between taps, if exeeded tempoArrayIndex resets

void setup() {
  pinMode(tapTempoButton,INPUT);
  pinMode(tapTempoButton, INPUT_PULLUP);
  pinMode(tempoLed,OUTPUT);
  pinMode(debugLed, OUTPUT);
}

//////Instantiate debouncers//////////
Bounce tapTempoBouncer = Bounce( tapTempoButton, 7 ); 

void loop() 
{
  ////Read buttons and check them////////////
  buttonCheck();  //Performing debounce and edge-detection
  
  ////Manage tempo and tap////////  
  resetTempoClock();  //Resetting tempoClock to false, see tapTempo tab
  keepTempo();  //Maintaining the tempo and setting tempoClock
    if( tapTempoButtonState == buttonPressed ){
      tapTempo();
      } 
  
  
  digitalWrite(tempoLed, tempoClock);  //DEBUG, checking to se if tempo i correct
  delay(3);
}
///////////////////////////////////////////
///////////////////////////////////////////


