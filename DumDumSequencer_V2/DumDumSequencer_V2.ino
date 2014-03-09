#include <Bounce.h>

//Tempo assosiated buttons//
#define tapTempoButton 8
#define tempoLed 13
#define DATA_PIN_164 10
#define CLOCK_PIN_164 11
//#define debugLed 13

///////////////////buttonCheck variables//////////////////
int tapTempoButtonStateLast;
int tapTempoButtonState;
const int buttonPressed = LOW;

////////////////////tapTempo variables/////////////////////
unsigned long tapArray[2] = {0, 0};  //For saving millis() value when tapButton is pressed
boolean tapState = false;  //For checking if a tapTempo calculation is ongoing
int tempoArrayIndex = 0;  //For keeping track of posistion in tapArray
unsigned long tempoDelay = 500;  //Defining tempoDelay to controll state of tempoClock
unsigned long tempoCurrentState;  //Checking if tempoDelay has passed
unsigned long tempoLastState = 0;  //Checking if tempoDelay time has passed
boolean tempoClock;  //Telling all functions if current cycle has a tempoBeat or not
unsigned long tempoDelayTimeout = 2000;  //Sets maximum wait-time between taps, if exeeded tempoArrayIndex resets

//////////////TempoDisplay constants and varibles/////////////////
const byte ZERO[8]  = {0,0,0,0,0,0,1,0};
const byte ONE[8]   = {1,0,0,1,1,1,1,0};
const byte TWO[8]   = {0,0,1,0,0,1,0,0};
const byte THREE[8] = {0,0,0,0,1,1,0,0};
const byte FOUR[8]  = {1,0,0,1,1,0,0,0};
const byte FIVE[8]  = {0,1,0,0,1,0,0,0};
const byte SIX[8]   = {1,1,0,0,0,0,0,0};
const byte SEVEN[8] = {0,0,0,1,1,1,1,0};
const byte EIGHT[8] = {0,0,0,0,0,0,0,0};
const byte NINE[8]  = {0,0,0,1,1,0,0,0};

const int MASTER_DIPLAY_ARRAY_SIZE = 15;  //Master diplay array size -1
int masterOutput[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

int currentVal = 000; //Tempo value is saved here for seperation
int currentVal1;  //100-value of tempo, seperated
int currentVal2;  //10-value of tempo. seperated
int currentVal3;  //1-value of tempo, seperated

void setup() {
  pinMode(tapTempoButton,INPUT);
  pinMode(tapTempoButton, INPUT_PULLUP);
  pinMode(tempoLed,OUTPUT);
 // pinMode(debugLed, OUTPUT);
}

//////Instantiate debouncers//////////
Bounce tapTempoBouncer = Bounce( tapTempoButton, 7 ); 

void loop() 
{
  ////Read buttons and check them////////////
  buttonCheck();  //Performing debounce and edge-detection
  
  ////Manage tempo and tap////////  
  resetTempoClock();  //Resetting tempoClock to false, see tapTempo tab
  keepTempo();  //Maintaining the tempo and setting tempoClock, also updates 7-seg diplay
    if( tapTempoButtonState == buttonPressed ){
      tapTempo();
      } 
  
  
  digitalWrite(tempoLed, tempoClock);  //DEBUG, checking to se if tempo i correct
  delay(3);
}
///////////////////////////////////////////
///////////////////////////////////////////


