//  
// Version 2 of homebrewed sequencer for DumDum DrumMachine..
//

#include <Bounce.h>  //Debouncing library
#include <Timer.h>  //Using timer to monitor tempo..
Timer timerTempo;//In  itiate a timer t..
Timer timerTimeOut;

//Inputs
const int voiceSelectBass = 1;
const int voiceSelectSnare = 2;
const int sequencerInput1 = 3;
const int sequencerInput2 = 4;
const int sequencerInput3 = 5;
const int sequencerInput4 = 6;
const int playStopButton = 7;
const int tapTempoButton = 8;

//Number of inputs for for-loop
const int INPUT_PIN_FIRST = 1;
const int INPUT_PIN_LAST = 7;

//Outputs
const int tempoLed = 10;
const int outputBass = 11;
const int outputSnare = 12;
const int playLed = 13;

//Number of outputs for for-loop
const int OUTPUT_PIN_FIRST = 10;
const int OUTPUT_PIN_LAST = 13;

//Button state
int buttonPress = LOW;
int voiceSelectBassState = HIGH;
int voiceSelectSnareState = HIGH;
int playStopState = HIGH;
int tapTempoButtonState = HIGH;

//Button state checks
int voiceSelectBassStateLast = LOW;
int voiceSelectSnareStateLast = LOW;
int playStopStateLast = LOW;
int tapTempoButtonStateLast = LOW;

//Initiate array
const int ARRAY_SIZE = 16;
int bassArray[ARRAY_SIZE];
int snareArray[ARRAY_SIZE];
const int TAP_ARRAY_SIZE = 4;
long tapArray[TAP_ARRAY_SIZE];

//Initiate variables
boolean play = false;
long tempo = 120;  //In BPM
long tempoDelay = 500; //In msec
long tempoTimeOut = 3000; //Timeout tempo counter if button is not pressed within 3s
int tempoCalcCount = 0; //To make sure the led flashes on the first beat even the first time
long currentTime = 0;
long lastTime = 0;
int tapCounter = 0;
int beatPosition = 0;

//SETUP/////////////////////////////////////////////////
///////////////////////////////////////////////////////
void setup()
{
  Serial.begin(9600);
  
  for(int i = 0; i < ARRAY_SIZE; i++)
  {
    bassArray[i] = LOW;
    snareArray[i] = LOW;
  }
  
  for(int i = INPUT_PIN_FIRST; i <= INPUT_PIN_LAST ; i++)
  {
    pinMode(i, INPUT);
    pinMode(i, INPUT_PULLUP);
  }
  
  for(int i = OUTPUT_PIN_FIRST; i <= OUTPUT_PIN_LAST ; i++)
  {
    pinMode(i, OUTPUT);
    digitalWrite(i, LOW);
  }
  
}

////////////Instantiate debouncers//////////////////////////////
  const  unsigned long DEBOUNCE_TIME = 5;
  Bounce bassSelectBouncer = Bounce(voiceSelectBass, DEBOUNCE_TIME);
  Bounce snareSelectBouncer = Bounce(voiceSelectSnare, DEBOUNCE_TIME);
  Bounce playStopBouncer = Bounce(playStopButton, DEBOUNCE_TIME);
  Bounce tapTempoBouncer = Bounce(tapTempoButton, DEBOUNCE_TIME);
//////////////////////////////////////////////////////////////////


/////////////LOOP//////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
void loop()  //Update timers, check for inputs and run routines acordingly
{
  Serial.print("TapButtonState:");
  Serial.println(tapTempoButtonState);
  timerTempo.update();
  timerTimeOut.update();
  timerTempo.every(tempoDelay, tempoFlash);
  timerTimeOut.after(tempoTimeOut, resetTapCounter);
  
  //tempoCalc(); //Calculate tempoDelay

  /*voiceSelectBassState = digitalRead(voiceSelectBass);
  voiceSelectSnareState = digitalRead(voiceSelectSnare);
  playStopState = digitalRead(playStopButton);
  tapTempoButtonState = digitalRead(tapTempoButton);
  
  buttonCheck(); //Button edge-detection and debounce..*/
  
  bouncerUpdate();
  
  if(voiceSelectBassState == LOW || voiceSelectSnareState == LOW)
  {
    voiceSelect();
  }
  
 /* else if(playStopState == LOW)
  {
    if(play == false)
      {
        play = true;
        playStop();
      }
      
      else
      {
        play = false;
        playStop();
      }
  
  }
  */
   else if(tapTempoButtonState == LOW)
    {
      tapTempoCalc();
    } 
}


