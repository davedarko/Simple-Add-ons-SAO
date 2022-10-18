#include <Wire.h>

void setup() {
  // put your setup code here, to run once:
  Wire.begin();
}

void loop() {
  // put your main code here, to run repeatedly:
  for(int i=1; i<70; i++)
  {
    Wire.beginTransmission(0x08);
    Wire.write(i);
    Wire.endTransmission();
    delay(100);
    
    Wire.beginTransmission(0x08);
    Wire.write(0);
    Wire.endTransmission();
    delay(100);
  }
  
  
  
}
