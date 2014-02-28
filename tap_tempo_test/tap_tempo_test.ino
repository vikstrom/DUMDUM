//Tap tepmo test

#include <Bounce.h> //include debounce library

int tapInput = 2;
int led = 13;

int lastInput;
int lastState;

Bounce bouncer = Bounce(tapInput, 5); //Initiate a Bounce object with 8 ms debouce

void setup()
{
  pinMode(led, OUTPUT);
  pinMode(tapInput, INPUT);  //Initiate tapInput-pin as input
  //digitalWrite(tapInput, HIGH);  //Initiate tapInput-pin pull-up resistor
}

void loop()
{
  bouncer.update();
    
    if(bouncer.read() == HIGH && lastState == LOW)
    {
      tempoCount();
    }
    
      else
      {
        digitalWrite(led, LOW);
      }
}

void tempoCount()
{
  long int timer1 = 0;
  
  for (int i = 1, i<=4, i++)
  {
    
  }
}


