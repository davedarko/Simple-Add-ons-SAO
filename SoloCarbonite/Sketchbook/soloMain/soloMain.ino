#include <tinyNeoPixel_Static.h>

#define PIN A6
#define NUMPIXELS 5
byte pixels[NUMPIXELS * 3];
tinyNeoPixel strip = tinyNeoPixel(NUMPIXELS, PIN, NEO_GRB, pixels);

unsigned long frameTimer = 0;
unsigned long frameTime = 10;

uint8_t displayCounter = 0;
uint8_t displayCounterMax = 10;

uint8_t slowBlinkCounter = 0;
uint8_t slowBlinkCounterMax = 150;
boolean LED_slowBlink_on = false;

uint8_t slowFlipperCounter = 0;
uint8_t slowFlipperCounterMax = 80;
boolean LED_slowFlip_on = false;

uint8_t LED_slowBlink = 0;
uint8_t LED_slowFlipper = 1;
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
  pinMode(PIN, OUTPUT);
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
  strip.setPixelColor(2, strip.Color(14 * digitStrength[displayCounter], 0, 0));
}
