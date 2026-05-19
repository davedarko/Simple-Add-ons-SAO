#include <Adafruit_NeoPixel.h>

#define LED_PIN    4
#define LED_COUNT 4


// background-image: linear-gradient(to right, #000b2d, #00345a, #005f85, #008eaa, #00bec6, #26d3d9, #3de9ec, #51ffff, #8efdff, #c8faff, #effaff, #ffffff);
int stringOfFire[12][3] {
  {   0,  11,  45}, // 000b2d
  {   0,  53,  90}, // 00345a
  {   0,  95, 133}, // 005f85
  {   0, 142, 170}, // 008eaa
  {   0, 191, 198}, // 00bec6
  {  38, 211, 217}, // 26d3d9
  
  {  61, 233, 236}, // 3de9ec
  {  81, 255, 255}, // 51ffff
  { 142, 253, 255}, // 8efdff
  { 200, 250, 255}, // c8faff
  { 239, 250, 255}, // effaff
  { 255, 255, 255}, // ffffff
};

Adafruit_NeoPixel strip(LED_COUNT, LED_PIN, NEO_GRB + NEO_KHZ800);

void setup() {
  strip.begin();
  strip.show();
  strip.setBrightness(200);
}
int marker = 0;
int wait = 40;
void loop() {

  for(int i=0; i<strip.numPixels(); i++) {
    int pos = (i + marker)%12;
    
    strip.setPixelColor(i, strip.Color(stringOfFire[pos][0],   stringOfFire[pos][1],   stringOfFire[pos][2]));
    strip.show();
    marker++;
    marker = marker%12;
    delay(wait);
  }
  marker = random(8);
}
