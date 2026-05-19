// A basic everyday NeoPixel strip test program.

// NEOPIXEL BEST PRACTICES for most reliable operation:
// - Add 1000 uF CAPACITOR between NeoPixel strip's + and - connections.
// - MINIMIZE WIRING LENGTH between microcontroller board and first pixel.
// - NeoPixel strip's DATA-IN should pass through a 300-500 OHM RESISTOR.
// - AVOID connecting NeoPixels on a LIVE CIRCUIT. If you must, ALWAYS
//   connect GROUND (-) first, then +, then data.
// - When using a 3.3V microcontroller with a 5V-powered NeoPixel strip,
//   a LOGIC-LEVEL CONVERTER on the data line is STRONGLY RECOMMENDED.
// (Skipping these may work OK on your workbench but can fail in the field)

#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
#include <avr/power.h> // Required for 16 MHz Adafruit Trinket
#endif

// Which pin on the Arduino is connected to the NeoPixels?
// On a Trinket or Gemma we suggest changing this to 1:
#define LED_PIN    4

// How many NeoPixels are attached to the Arduino?
#define LED_COUNT 84  // 74

// Declare our NeoPixel strip object:
Adafruit_NeoPixel strip(LED_COUNT, LED_PIN, NEO_GRB + NEO_KHZ800);
// Argument 1 = Number of pixels in NeoPixel strip
// Argument 2 = Arduino pin number (most are valid)
// Argument 3 = Pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
//   NEO_RGBW    Pixels are wired for RGBW bitstream (NeoPixel RGBW products)


// setup() function -- runs once at startup --------------------------------



uint8_t gamma8[] = {
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,
  1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,  2,  2,  2,
  2,  3,  3,  3,  3,  3,  3,  3,  4,  4,  4,  4,  4,  5,  5,  5,
  5,  6,  6,  6,  6,  7,  7,  7,  7,  8,  8,  8,  9,  9,  9, 10,
  10, 10, 11, 11, 11, 12, 12, 13, 13, 13, 14, 14, 15, 15, 16, 16,
  17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 24, 24, 25,
  25, 26, 27, 27, 28, 29, 29, 30, 31, 32, 32, 33, 34, 35, 35, 36,
  37, 38, 39, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 50,
  51, 52, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68,
  69, 70, 72, 73, 74, 75, 77, 78, 79, 81, 82, 83, 85, 86, 87, 89,
  90, 92, 93, 95, 96, 98, 99, 101, 102, 104, 105, 107, 109, 110, 112, 114,
  115, 117, 119, 120, 122, 124, 126, 127, 129, 131, 133, 135, 137, 138, 140, 142,
  144, 146, 148, 150, 152, 154, 156, 158, 160, 162, 164, 167, 169, 171, 173, 175,
  177, 180, 182, 184, 186, 189, 191, 193, 196, 198, 200, 203, 205, 208, 210, 213,
  215, 218, 220, 223, 225, 228, 231, 233, 236, 239, 241, 244, 247, 249, 252, 255
};





// loop() function -- runs repeatedly as long as board is on ---------------

#define RING_NUMBER 7
uint8_t circularOLD[RING_NUMBER][12] = {
  { 12, 13, 26, 27, 40, 41, 54, 55, 68, 69, 82, 83 },
  { 11, 10, 25, 24, 39, 38, 53, 52, 67, 66, 81, 80 },
  {  0,  9, 14, 23, 28, 37, 42, 51, 56, 65, 70, 79 },
  {  1,  8, 15, 22, 29, 36, 43, 50, 57, 64, 71, 78 },
  {  2,  7, 16, 21, 30, 35, 44, 49, 58, 63, 72, 77 },
  {  3,  6, 17, 20, 31, 34, 45, 48, 59, 62, 73, 76 },
  {  4,  5, 18, 19, 32, 33, 46, 47, 60, 61, 74, 75 }
};


uint8_t circular[RING_NUMBER][12] = {
  { 44, 45, 58, 59, 72, 73,  3,  2, 16, 17, 30, 31 },
  { 47, 46, 61, 60, 75, 74,  5,  4, 19, 18, 33, 32 },
  { 48, 57, 62, 71, 76,  1,  6, 15, 20, 29, 34, 43 },
  { 49, 56, 63, 70, 77,  0,  7, 14, 21, 28, 35, 42 },
  { 50, 55, 64, 69, 78, 83,  8, 13, 22, 27, 36, 41 },
  { 51, 54, 65, 68, 79, 82,  9, 12, 23, 26, 37, 40 },
  { 52, 53, 66, 67, 80, 81, 10, 11, 24, 25, 38, 39 }
};

int sd = 100;
int ld = 5000;

uint32_t colors[8];
uint8_t steps = 128;

void setup() {
  Serial.begin(115200);
    randomSeed(analogRead(0));

  strip.begin();           // INITIALIZE NeoPixel strip object (REQUIRED)
  strip.show();            // Turn OFF all pixels ASAP
  strip.setBrightness(127); // Set BRIGHTNESS to about 1/5 (max = 255)

  uint8_t r, g, b;

  for (uint8_t i = 0; i < 8; i++) {
    r = random(255);
    g = random(255);
    b = random(255);

    colors[i] = getHueColor(strip.Color(r, g, b));
    
  }
}

void loop() {

     drawRadialFlower();
//    drawAllLEDs();

//  drawRings();
  delay(100);
  nextColor();
}

void nextColor() {
  for (uint8_t i = 0; i < 7; i++) {
    colors[7 - i] = colors[6 - i];
  }

  uint8_t r = random(255);
  uint8_t g = random(255);
  uint8_t b = random(255);
  
  colors[0] = getHueColor(strip.Color(r, g, b));
}

void drawAllLEDs() {
  for (uint8_t s = 0; s < steps; s++) {
    for (uint8_t i = 0; i < 84; i++) {
      strip.setPixelColor(i, stepColorHSV(colors[1], colors[0], s));
    }
    strip.show();
    delay(25);
  }
}

void drawRings() {
  uint8_t p = 0;
  for (uint8_t j = 0; j < RING_NUMBER; j++) {
    for (uint8_t i = 0; i < 12; i++) {
      // strip.setPixelColor(circular[j][i], colors[j]);
      uint32_t  c = stepColorHSV(colors[j], colors[j], steps);
      
      strip.setPixelColor(circular[j][i], c);
      Serial.print("Pixel: ");
      Serial.print(p++);
      Serial.print(" ");
      Serial.print(j);
      Serial.print(" ");
      Serial.print(i);
      Serial.print(" ");
      Serial.print(circular[j][i]);
      Serial.print(" color: ");
      Serial.print(c);
      Serial.println();
    }
    strip.show(); delay(100);
  }
  Serial.println();

  delay(1000);
  
  for (uint8_t j = 0; j < RING_NUMBER; j++) {
    for (uint8_t i = 0; i < 12; i++) {
      strip.setPixelColor(circular[j][i], strip.Color(0, 0, 0));
    }
    strip.show(); delay(100);
  }
}

void drawRadialFlower() {
  for (uint8_t s = 0; s < steps; s++) {
    for (uint8_t i = 0; i < RING_NUMBER; i++)
    {
      for (uint8_t j = 0; j < 12; j++) {

//        strip.setPixelColor(circular[i][j], stepColorHSV(colors[i + 1], colors[i], s));
        strip.setPixelColor(circular[i][j], stepColorRGBgamma(colors[i + 1], colors[i], s));
        

      }
    }
    strip.show();
    delay(25);
  }
}

uint32_t getHueColor(uint32_t c) {
  uint8_t cr = c >> 16;
  uint8_t cg = c >> 8;
  uint8_t cb = c;

  double crL = (double) cr / 255;
  double cgL = (double) cg / 255;
  double cbL = (double) cb / 255;

  double cMin = getMin(crL, cgL, cbL);
  double cMax = getMax(crL, cgL, cbL);
  double cH = 0;
  if (cMax == crL) {
    cH = (cgL - cbL) / (cMax - cMin);
  }
  if (cMax == cgL) {
    cH = 2 * (cbL - crL) / (cMax - cMin);
  }
  if (cMax == cbL) {
    cH = 4 * (crL - cgL) / (cMax - cMin);
  }
  cH = cH * 60;
  
  uint16_t cH16 = map(cH, 0.0, 360.0, 0, 65535);
  return strip.ColorHSV(cH16);
}

uint32_t stepColorHSV(uint32_t current, uint32_t target, uint8_t s) {
  uint8_t cr = current >> 16;
  uint8_t cg = current >> 8;
  uint8_t cb = current;

  double crL = (double) cr / 255;
  double cgL = (double) cg / 255;
  double cbL = (double) cb / 255;

  double cMin = getMin(crL, cgL, cbL);
  double cMax = getMax(crL, cgL, cbL);
  double cH = 0;
  if (cMax == crL) {
    cH = (cgL - cbL) / (cMax - cMin);
  }
  if (cMax == cgL) {
    cH = 2 * (cbL - crL) / (cMax - cMin);
  }
  if (cMax == cbL) {
    cH = 4 * (crL - cgL) / (cMax - cMin);
  }
  cH = cH * 60;

  uint8_t tr = target >> 16;
  uint8_t tg = target >> 8;
  uint8_t tb = target;

  double trL = (double) tr / 255;
  double tgL = (double) tg / 255;
  double tbL = (double) tb / 255;

  double tMin = getMin(trL, tgL, tbL);
  double tMax = getMax(trL, tgL, tbL);
  double tH = 0;
  if (tMax == trL) {
    tH = (tgL - tbL) / (tMax - tMin);
  }
  if (tMax == tgL) {
    tH = 2.0 * (tbL - trL) / (tMax - tMin);
  }
  if (tMax == tbL) {
    tH = 4.0 * (trL - cgL) / (tMax - tMin);
  }
  tH = tH * 60;

  // map(value, fromLow, fromHigh, toLow, toHigh)
  uint16_t cH16 = map(cH, 0.0, 360.0, 0, 65535);
  uint16_t tH16 = map(tH, 0.0, 360.0, 0, 65535);

  if (cH16 >= tH16)
  {
    if ((cH16 - tH16) < 32768) {
      return strip.ColorHSV(cH16 + (tH16 - cH16) * s / steps);
    }
    else {
      return strip.ColorHSV(tH16 + (cH16 - tH16) * s / steps);
    }
  }
  else {

    if ((tH16 - cH16) < 32768) {
      return strip.ColorHSV(tH16 + (cH16 - tH16) * s / steps);

    }
    else {
      return strip.ColorHSV(cH16 + (tH16 - cH16) * s / steps);
    }
    //    return strip.ColorHSV(tH16 + (cH16-tH16) * s / steps);
  }

  // return strip.ColorHSV(cH16 + (tH16-cH16) * s / steps); // , cS + (tS-cS) * s / steps, cL + (tL-cL) * s / steps);
}

uint32_t stepColorRGB(uint32_t current, uint32_t target, uint8_t s) {
  uint8_t cr = current >> 16;
  uint8_t cg = current >> 8;
  uint8_t cb = current;

  uint8_t tr = target >> 16;
  uint8_t tg = target >> 8;
  uint8_t tb = target;

  uint8_t r = cr + (tr - cr) * s / steps;
  uint8_t g = cg + (tg - cg) * s / steps;
  uint8_t b = cb + (tb - cb) * s / steps;

  return strip.Color(r, g, b);
}

uint32_t stepColorRGBgamma(uint32_t current, uint32_t target, uint8_t s) {
  uint8_t cr = current >> 16;
  uint8_t cg = current >> 8;
  uint8_t cb = current;

  uint8_t tr = target >> 16;
  uint8_t tg = target >> 8;
  uint8_t tb = target;

  uint8_t r = cr + (tr - cr) * s / steps;
  uint8_t g = cg + (tg - cg) * s / steps;
  uint8_t b = cb + (tb - cb) * s / steps;

  return strip.Color(gamma8[r], gamma8[g], gamma8[b]);
}

double getMin(double a, double b, double c)
{
  if (a <= b && a <= c) return a;
  if (b <= c && b <= a) return b;
  if (c <= b && c <= a) return c;
}

double getMax(double a, double b, double c)
{
  if (a >= b && a >= c) return a;
  if (b >= c && b >= a) return b;
  if (c >= b && c >= a) return c;
}

void radialFlowerBlink() {
  for (uint8_t i = 0; i < 4; i++)
  {
    uint8_t r = random(255);
    uint8_t g = random(255);
    uint8_t b = random(255);

    for (uint8_t j = 0; j < 12; j++) {
      if (circular[i][j] < 255) {
        strip.setPixelColor(circular[i][j], strip.Color(r, g, b));
      }
    }
    strip.show();
    delay(sd);
  }

  delay(ld);

  for (uint8_t i = 0; i < 4; i++)
  {
    for (uint8_t j = 0; j < 12; j++) {
      if (circular[i][j] < 255) {
        strip.setPixelColor(circular[i][j], strip.Color(0, 0, 0));
      }
    }
    strip.show();
    delay(sd);
  }
}


// Some functions of our own for creating animated effects -----------------

// Fill strip pixels one after another with a color. Strip is NOT cleared
// first; anything there will be covered pixel by pixel. Pass in color
// (as a single 'packed' 32-bit value, which you can get by calling
// strip.Color(red, green, blue) as shown in the loop() function above),
// and a delay time (in milliseconds) between pixels.
void colorWipe(uint32_t color, int wait) {
  for (int i = 0; i < strip.numPixels(); i++) { // For each pixel in strip...
    strip.setPixelColor(i, color);         //  Set pixel's color (in RAM)
    strip.show();                          //  Update strip to match
    delay(wait);                           //  Pause for a moment
  }
}

// Theater-marquee-style chasing lights. Pass in a color (32-bit value,
// a la strip.Color(r,g,b) as mentioned above), and a delay time (in ms)
// between frames.
void theaterChase(uint32_t color, int wait) {
  for (int a = 0; a < 10; a++) { // Repeat 10 times...
    for (int b = 0; b < 3; b++) { //  'b' counts from 0 to 2...
      strip.clear();         //   Set all pixels in RAM to 0 (off)
      // 'c' counts up from 'b' to end of strip in steps of 3...
      for (int c = b; c < strip.numPixels(); c += 3) {
        strip.setPixelColor(c, color); // Set pixel 'c' to value 'color'
      }
      strip.show(); // Update strip with new contents
      delay(wait);  // Pause for a moment
    }
  }
}

// Rainbow cycle along whole strip. Pass delay time (in ms) between frames.
void rainbow(int wait) {
  // Hue of first pixel runs 5 complete loops through the color wheel.
  // Color wheel has a range of 65536 but it's OK if we roll over, so
  // just count from 0 to 5*65536. Adding 256 to firstPixelHue each time
  // means we'll make 5*65536/256 = 1280 passes through this loop:
  for (long firstPixelHue = 0; firstPixelHue < 5 * 65536; firstPixelHue += 256) {
    // strip.rainbow() can take a single argument (first pixel hue) or
    // optionally a few extras: number of rainbow repetitions (default 1),
    // saturation and value (brightness) (both 0-255, similar to the
    // ColorHSV() function, default 255), and a true/false flag for whether
    // to apply gamma correction to provide 'truer' colors (default true).
    strip.rainbow(firstPixelHue);
    // Above line is equivalent to:
    // strip.rainbow(firstPixelHue, 1, 255, 255, true);
    strip.show(); // Update strip with new contents
    delay(wait);  // Pause for a moment
  }
}

// Rainbow-enhanced theater marquee. Pass delay time (in ms) between frames.
void theaterChaseRainbow(int wait) {
  int firstPixelHue = 0;     // First pixel starts at red (hue 0)
  for (int a = 0; a < 30; a++) { // Repeat 30 times...
    for (int b = 0; b < 3; b++) { //  'b' counts from 0 to 2...
      strip.clear();         //   Set all pixels in RAM to 0 (off)
      // 'c' counts up from 'b' to end of strip in increments of 3...
      for (int c = b; c < strip.numPixels(); c += 3) {
        // hue of pixel 'c' is offset by an amount to make one full
        // revolution of the color wheel (range 65536) along the length
        // of the strip (strip.numPixels() steps):
        int      hue   = firstPixelHue + c * 65536L / strip.numPixels();
        uint32_t color = strip.gamma32(strip.ColorHSV(hue)); // hue -> RGB
        strip.setPixelColor(c, color); // Set pixel 'c' to value 'color'
      }
      strip.show();                // Update strip with new contents
      delay(wait);                 // Pause for a moment
      firstPixelHue += 65536 / 90; // One cycle of color wheel over 90 frames
    }
  }
}
