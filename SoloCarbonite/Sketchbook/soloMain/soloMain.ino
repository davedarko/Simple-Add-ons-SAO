#include <tinyNeoPixel_Static.h>

#define PIN A6

// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
// Parameter 4 = array to store pixel data in

#define NUMPIXELS 5

// Since this is for the static version of the library, we need to supply the pixel array
// This saves space by eliminating use of malloc() and free(), and makes the RAM used for
// the frame buffer show up when the sketch is compiled.

byte pixels[NUMPIXELS * 3];

// When we setup the NeoPixel library, we tell it how many pixels, and which pin to use to send signals.
// Note that for older NeoPixel strips you might need to change the third parameter--see the strandtest
// example for more information on possible values. Finally, for the 4th argument we pass the array we
// defined above.

tinyNeoPixel strip = tinyNeoPixel(NUMPIXELS, PIN, NEO_GRB, pixels);

// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
// pixel power leads, add 300 - 500 Ohm resistor on first pixel's data input
// and minimize distance between Arduino and first pixel.  Avoid connecting
// on a live circuit...if you must, connect GND first.

unsigned long frameTimer = 0;
unsigned long frameTime = 10;

uint8_t displayCounter = 0;
uint8_t displayCounterMax = 100;

uint8_t slowBlinkCounter = 0;
uint8_t slowBlinkCounterMax = 150;
boolean LED_slowBlink_on = false;

uint8_t slowFlipperCounter = 0;
uint8_t slowFlipperCounterMax = 80;
boolean LED_slowFlip_on = false;

uint8_t LED_slowBlink = 0;
uint8_t LED_slowFlipper = 1;
uint8_t LED_segments = 2;
uint8_t LED_oscilloscope = 3;
uint8_t LED_face = 4;

boolean freeze_mode = true;
uint16_t freezeCounter = 0;
uint16_t freezeAfter = 10 * 1000 / frameTime;
uint8_t FreezeBlinkCounter = 0;
uint8_t FreezeBlinkCounterMax = 80;

uint8_t DeFreezeBlinkCounter = 0;
uint8_t DeFreezeBlinkCounterMax = 20;
uint8_t FreezeBlink_on = true;

uint16_t DeFreezeCounter = 0;
uint16_t DeFreezeCounterMax = 4 * 1000 / frameTime;


void setup() {
  pinMode(PIN, OUTPUT); // set pin output - this is not done internally by the library for Static version of library
  // strip.begin(); // Static version does not use this.
  strip.show(); // Initialize all pixels to 'off'
  for (uint8_t i=0; i<5; i++) {
    strip.setPixelColor(i, strip.Color(32, 32, 32));
    strip.show();
    delay(100);
  }
  for (uint8_t i=0; i<5; i++) {
    strip.setPixelColor(i, strip.Color(0, 0, 0));
    strip.show();
    delay(100);
  }
  
}

void loop() {

  if (millis() - frameTimer > frameTime) {
    frameTimer = millis();


    // smoll LED on lower Panel
    if (slowBlinkCounter == slowBlinkCounterMax) {
      slowBlinkCounter = 0;
      LED_slowBlink_on = !LED_slowBlink_on;
    }
    if (LED_slowBlink_on) {
      strip.setPixelColor(LED_slowBlink, strip.Color(255, 0, 0));
    }
    else {
      strip.setPixelColor(LED_slowBlink, strip.Color(255, 255, 0));
    }
    slowBlinkCounter++;

    // 4 leds in a cross, 3rd panel
    if (slowFlipperCounter == slowFlipperCounterMax) {
      slowFlipperCounter = 0;
      if (LED_slowFlip_on) {
        strip.setPixelColor(LED_slowFlipper, strip.Color(255, 0, 0));
      }
      else {
        strip.setPixelColor(LED_slowFlipper, strip.Color(64, 64, 64));
      }
      LED_slowFlip_on = !LED_slowFlip_on;
    }
    slowFlipperCounter++;

    // fourth panel, LED segment display
    if (displayCounter == displayCounterMax) {
      displayCounter = 0;
    }
    showSement();
    displayCounter++;

    // face
    if (freeze_mode) {

      if (FreezeBlinkCounter == FreezeBlinkCounterMax) {
        FreezeBlink_on = !FreezeBlink_on;
        FreezeBlinkCounter = 0;
      }

      if (FreezeBlink_on) {
        strip.setPixelColor(LED_oscilloscope, strip.Color(0, 255, 0));
      }
      else {
        strip.setPixelColor(LED_oscilloscope, strip.Color(0, 0, 0));
      }
      FreezeBlinkCounter++;


      strip.setPixelColor(LED_face, strip.Color(0, 0, 0));

      if (freezeCounter == freezeAfter)
      {
        freeze_mode = false;
        freezeCounter = 0;
        FreezeBlink_on = true;
      }
      freezeCounter++;
    }
    else {

      if (DeFreezeBlinkCounter == DeFreezeBlinkCounterMax) {
        FreezeBlink_on = !FreezeBlink_on;
        DeFreezeBlinkCounter = 0;
      }

      if (FreezeBlink_on) {
        strip.setPixelColor(LED_oscilloscope, strip.Color(0, 255, 0));
      }
      else {
        strip.setPixelColor(LED_oscilloscope, strip.Color(0, 0, 0));
      }
      DeFreezeBlinkCounter++;

      if (DeFreezeCounter < DeFreezeCounterMax / 3) {
        strip.setPixelColor(LED_face, strip.Color(255, 0, 0));
      }
      else {
        strip.setPixelColor(
          LED_face,
          strip.Color(
            255,
            (uint8_t) map(DeFreezeCounter, DeFreezeCounterMax / 3, DeFreezeCounterMax, 0, 255),
            (uint8_t) map(DeFreezeCounter, DeFreezeCounterMax / 3, DeFreezeCounterMax, 0, 255)
          )
        );
      }
      if (DeFreezeCounter == DeFreezeCounterMax)
      {
        freeze_mode = true;
        DeFreezeCounter = 0;
      }
      DeFreezeCounter++;
    }



  }

  strip.show();
}

uint8_t digitStrength[] = { 6, 2, 5, 5, 4, 5, 6, 3, 7, 6 };
void showSement() {
  uint8_t firstDigit = displayCounter % 10;
  uint8_t secondDigit = displayCounter / 10;
  uint8_t LED_strength = digitStrength[firstDigit] + 14 * digitStrength[secondDigit];

  strip.setPixelColor(LED_segments, strip.Color(LED_strength, 0, 0));
}
