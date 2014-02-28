void playStop()
{
  
}

void writeOutput()
{
    digitalWrite(outputBass, bassArray[beatPosition]);
    digitalWrite(outputSnare, snareArray[beatPosition]);
    delay(5);
    digitalWrite(outputBass, LOW);
    digitalWrite(outputSnare, LOW);

}
  

