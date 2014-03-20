
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
  displayTempo();
  }
  
  lastTempoDelay = tempoDelay;
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

///////////////////////////////////////////////////////////////////////
/////////////////Display tempo on 7-segment diplay////////////////////

void displayTempo()
{
  separateValue();
  setOutputArray();
  shiftArrayOut();
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

void setOutputArray()  //Set the induvidual numbers for each segment and save i array
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
  for(int i = 0; i <= MASTER_DISPLAY_ARRAY_SIZE; i++) {
    digitalWrite(DATA_PIN_164, masterDisplayOutput[i]);
    digitalWrite(CLOCK_PIN_164, HIGH);  //Clock pulse
    digitalWrite(CLOCK_PIN_164, LOW);
  }
  
}
