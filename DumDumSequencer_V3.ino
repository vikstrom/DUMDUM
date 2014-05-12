/////Pin define//////

///buttonCheck Pins///
#define PL_PIN_165 7
#define CLOCK_PIN_165 8
#define SERIAL_INPUT_165 9

///displayWrite pins///
#define DATA_PIN_164 10
#define CLOCK_PIN_164  11

#define led 13

//Array to accept serial data//
const int BUTTON_ARRAY_SIZE = 16;
int masterButtonArray[BUTTON_ARRAY_SIZE] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,};

///Define buttons///
int tapTempoButtonState;
int buttonState1;
int buttonState2;
int buttonState3;
int buttonState4;
int buttonState5;
int buttonState6;
int buttonState7;
int buttonState8;
int buttonState9;
int buttonState10;
int buttonState11;
int buttonState12;
int buttonState13;
int buttonState14;
int buttonState15;
int buttonPressed = 0; //Sets which buttonState should be considered a push

///buttonCheck variables///
int tapTempoButtonStateLast = !buttonPressed;

////////////////////tapTempo variables/////////////////////
unsigned long tapArray[2] = {0, 0};  //For saving millis() value when tapButton is pressed
boolean tapState = false;  //For checking if a tapTempo calculation is ongoing
int tempoArrayIndex = 0;  //For keeping track of posistion in tapArray
unsigned long tempoDelay = 500;  //Defining tempoDelay to controll state of tempoClock
unsigned long tempoCurrentState;  //Checking if tempoDelay has passed
unsigned long tempoLastState = 0;  //Checking if tempoDelay time has passed
boolean tempoClock = false;  //Telling all functions if current cycle has a tempoBeat or not
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

const int MASTER_DISPLAY_ARRAY_SIZE = 24;  //Master diplay array size
int masterDisplayOutput[MASTER_DISPLAY_ARRAY_SIZE] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
const int FIRST_DISPLAY_ARRAY = 7;  //These are used to keep track of masterDisplayOutput so that correct array is sent to correct 7seg
const int SECOND_DISPLAY_ARRAY = 15;  
const int THIRD_DISPLAY_ARRAY = 23;

float bpm;
int currentVal = 0; //Tempo value is saved here for seperation
int currentVal1 = 0;  //100-value of tempo, seperated
int currentVal2 = 0;  //10-value of tempo. seperated
int currentVal3 = 0;  //1-value of tempo, seperated

int lastTempoDelay = 0; //For keeping time

void setup() 
{
 // Serial.begin(9600);
  pinMode(led, OUTPUT);
	pinMode(PL_PIN_165, OUTPUT);
	pinMode(CLOCK_PIN_165, OUTPUT);
	pinMode(SERIAL_INPUT_165, INPUT);
}

void shiftSerialIn()
{
  digitalWrite(PL_PIN_165, LOW);  //Save current state of parallell inputs
  //delay(2);  //Might work as a crude debouncer?
  digitalWrite(PL_PIN_165, HIGH);  //Accept clock
  
  //Clock in serial data
  for(int i = BUTTON_ARRAY_SIZE - 1; i >= 0; i--) {
    masterButtonArray[i] = digitalRead(SERIAL_INPUT_165);
    digitalWrite(CLOCK_PIN_165, HIGH);
    digitalWrite(CLOCK_PIN_165, LOW);
 }  
}

void setButtonState()
{
  tapTempoButtonState = masterButtonArray[0];  //button0
  buttonState1 = masterButtonArray[1];    //button1
  buttonState2 = masterButtonArray[2];    //button2
  buttonState3 = masterButtonArray[3];    //button3
  buttonState4 = masterButtonArray[4];    //button4
  buttonState5 = masterButtonArray[5];    //button5
  buttonState6 = masterButtonArray[6];    //button6
  buttonState7 = masterButtonArray[7];    //button7
  buttonState8 = masterButtonArray[8];    //button8
  buttonState9 = masterButtonArray[9];    //button9
  buttonState10 = masterButtonArray[10];  //button10
  buttonState11 = masterButtonArray[11];  //button11
  buttonState12 = masterButtonArray[12];  //button12
  buttonState13 = masterButtonArray[13];  //button13
  buttonState14 = masterButtonArray[14];  //button14
  buttonState15 = masterButtonArray[15];  //button15
}

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
  
  if(tempoDelay != lastTempoDelay) {
  
  }
  
  lastTempoDelay = tempoDelay;
} 


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

void tempoArrayIndexReset()  //Resetting index in tapArray
{
  tempoArrayIndex = 0;
}


void tempoBeat()  //Sets tempoClock to true to indicate that current cycle is a "beat cycle"
{
  tempoClock = true;
}


void resetTempoClock()  //Resetting tempoClock to false to indicate that current cycle in NOT a "beat cycle"
{
  tempoClock = false;
}



void separateValue()  //Prepare tempo display by seperating the numbers
{
   bpm = (float)60000 / (float)tempoDelay;  //Calculate BPM from tempoDelay
   bpm = bpm + (float)0.5;  //Add 0.5 for rounding
   currentVal = (int)bpm;    //Typecast back to int for separation
   currentVal1 = currentVal / 100;
   currentVal2 = (currentVal / 10) % 10;
   currentVal3 = currentVal % 10;
}

void setOutputArray()  //Set the induvidual numbers for each segment and save in array
{  
 
  switch(currentVal1) {
 
    case 0:
      for(int i = 0; i <= FIRST_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = ZERO[i];
      }
      break;
      
      case 1:
      for(int i = 0; i <= FIRST_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = ONE[i];
      }
      break;
      
      case 2:
      for(int i = 0; i <= FIRST_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = TWO[i];
      }
      break;
      
      case 3:
      for(int i = 0; i <= FIRST_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = THREE[i];;
      }
      break;
      
      case 4:
      for(int i = 0; i <= FIRST_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = FOUR[i];
      }
      break;
      
      case 5:
      for(int i = 0; i <= FIRST_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = FIVE[i];
      }
      break;
      
      case 6:
      for(int i = 0; i <= FIRST_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = SIX[i];
      }
      break;
      
      case 7:
      for(int i = 0; i <= FIRST_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = SEVEN[i];
      }
      break;
      
      case 8:
      for(int i = 0; i <= FIRST_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = EIGHT[i];
      }
      break;
      
      case 9:
      for(int i = 0; i <= FIRST_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = NINE[i];
      }
      break;
  }
  
  switch(currentVal2) {
 
    case 0:
      for(int i = FIRST_DISPLAY_ARRAY + 1; i <= SECOND_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = ZERO[i-8];
      }
      break;
      
      case 1:
      for(int i = FIRST_DISPLAY_ARRAY + 1; i <= SECOND_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = ONE[i-8];
      }
      break;
      
      case 2:
      for(int i = FIRST_DISPLAY_ARRAY + 1; i <= SECOND_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = TWO[i-8];
      }
      break;
      
      case 3:
      for(int i = FIRST_DISPLAY_ARRAY + 1; i <= SECOND_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = THREE[i-8];
      }
      break;
      
      case 4:
      for(int i = FIRST_DISPLAY_ARRAY + 1; i <= SECOND_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = FOUR[i-8];
      }
      break;
      
      case 5:
      for(int i = FIRST_DISPLAY_ARRAY + 1; i <= SECOND_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = FIVE[i-8];
      }
      break;
      
      case 6:
      for(int i = FIRST_DISPLAY_ARRAY + 1; i <= SECOND_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = SIX[i-8];
      }
      break;
      
      case 7:
      for(int i = FIRST_DISPLAY_ARRAY + 1; i <= SECOND_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = SEVEN[i-8];
      }
      break;
      
      case 8:
      for(int i = FIRST_DISPLAY_ARRAY + 1; i <= SECOND_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = EIGHT[i-8];
      }
      break;
      
      case 9:
      for(int i = FIRST_DISPLAY_ARRAY + 1; i <= SECOND_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = NINE[i-8];
      }
      break;
  }
  
 switch(currentVal3) {
 
    case 0:
      for(int i = SECOND_DISPLAY_ARRAY + 1; i <= THIRD_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = ZERO[i-16];
      }
      break;
      
      case 1:
      for(int i = SECOND_DISPLAY_ARRAY + 1; i <= THIRD_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = ONE[i-16];
      }
      break;
      
      case 2:
      for(int i = SECOND_DISPLAY_ARRAY + 1; i <= THIRD_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = TWO[i-16];
      }
      break;
      
      case 3:
      for(int i = SECOND_DISPLAY_ARRAY + 1; i <= THIRD_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = THREE[i-16];
      }
      break;
      
      case 4:
      for(int i = SECOND_DISPLAY_ARRAY + 1; i <= THIRD_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = FOUR[i-16];
      }
      break;
      
      case 5:
      for(int i = SECOND_DISPLAY_ARRAY + 1; i <= THIRD_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = FIVE[i-16];
      }
      break;
      
      case 6:
      for(int i = SECOND_DISPLAY_ARRAY + 1; i <= THIRD_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = SIX[i-16];
      }
      break;
      
      case 7:
      for(int i = SECOND_DISPLAY_ARRAY + 1; i <= THIRD_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = SEVEN[i-16];
      }
      break;
      
      case 8:
      for(int i = SECOND_DISPLAY_ARRAY + 1; i <= THIRD_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = EIGHT[i-16];
      }
      break;
      
      case 9:
      for(int i = SECOND_DISPLAY_ARRAY + 1; i <= THIRD_DISPLAY_ARRAY; i++) {
        masterDisplayOutput[i] = NINE[i-16];
      }
      break;
 }
}

void shiftArrayOut()  //Shift out the array.
{
  for(int i = 0; i <= MASTER_DISPLAY_ARRAY_SIZE - 1; i++) {
    digitalWrite(DATA_PIN_164, masterDisplayOutput[i]);
    digitalWrite(CLOCK_PIN_164, HIGH);  //Clock pulse
    digitalWrite(CLOCK_PIN_164, LOW);
  }
  
}

void displayTempo()
{
  separateValue();
  setOutputArray();
  shiftArrayOut();
}

void buttonCheck()
{
  //tapTempoButtonState = !buttonPressed;
  buttonCheckTapTempo();

}

void buttonCheckTapTempo()
{
     if ( tapTempoButtonState == buttonPressed && tapTempoButtonStateLast == !buttonPressed ) {
       tapTempoButtonState = buttonPressed;
       tapTempoButtonStateLast = tapTempoButtonState;
     }
     
     else if( tapTempoButtonState == !buttonPressed ) {
       tapTempoButtonState = !buttonPressed;
       tapTempoButtonStateLast = tapTempoButtonState;
     }

     else {
      tapTempoButtonState = !buttonPressed;
     }
}

void testing()
{
/*
  Serial.print("Buttons: ");

  Serial.print(tapTempoButtonState);
  Serial.print(buttonState1);
  Serial.print("  ");
  
  Serial.print(buttonState3);
  Serial.print("  ");
  
  Serial.print(buttonState5);
  Serial.print("  ");
  
  Serial.print(buttonState7);
  Serial.print("  ");
  
  Serial.print(buttonState9);
  Serial.print("  ");
  
  Serial.print(buttonState11);
  Serial.print("  ");
  
  Serial.print(buttonState13);
  Serial.print("  ");
  
  Serial.print(buttonState15);
  Serial.println("  ");

  Serial.print("Tempo: ");
  Serial.print(currentVal1);
  Serial.print(currentVal2);
  Serial.println(currentVal3);
  */

  digitalWrite(led, tempoClock);
}

void loop() 
{
	///Manages buttons///
	shiftSerialIn();	//Reads serial data of 165
	setButtonState();	//Saves serial data to buttonstates
  buttonCheck();

	////Manage tempo and tap////////  
  resetTempoClock();  //Resetting tempoClock to false, keepTempo will set tempoClock
  keepTempo();  //Maintaining the tempo and setting tempoClock, also updates 7-seg diplay
  if( tapTempoButtonState == buttonPressed ){
     	tapTempo();
  	}

  ///Manage display///
  displayTempo();
  
  ///TEST/DEBUG ROUTINE///
  testing();

}

