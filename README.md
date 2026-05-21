# Simple-Add-ons-SAO
Hardware Conference Badges tend to turn very complex, so to allow people to add bling and memes to their badge, the SAO (then shitty add-on) standard was developed. It started as a 2x2 header with two power pins and two I2C pins for data and a clock signal. Let me introduce you to the standard and show you what can be achieved. This is one of my favorite things to design, as they can be nice little gifts and inspires a lot of people for future years to also design and gift some. 

They are perfect gifts and spark joy!

Find all of my ~~shitty~~ simple add-ons in this repository. Plus some badges that were never converted to SAO but they still blink and everything.

## The current header - V1.69bis
The header was expanded to a 2x3 ISP connector later. Looking at the simple add-on, this is the layout.

![Pinout](/img/SAOpinout.png "Render of front and backside of the simple add-on and the used header")

## Designs in this repository

|Badge Name| Type | Eagle | Kicad | Description |
|----------|------|-------|-------|-------------|
| Ghibli/Soot Sprites | SAO | yes | - | A susuwatari simple add-on |
| LECCO postcard  | SAO | yes | - | Reminder token for a good time at Hackaday Europe 2026 in Lecco, Italy |
| Han SAOlo in carbonyte  | SAO | - | yes | work in progress, Attiny202 with RGB LEDs https://hackaday.io/project/197803-han-saolo|
| COVID-19 badge | SAO | - | yes | blinks with the help of a 555 timer on the back https://hackaday.io/project/187615-covid-19-sao-simple-add-on |
| "Hello my name is"  | SAO | - | yes | some blinks, some no https://hackaday.io/project/197693-hello-my-name-is-sao |
| MrAnderson  | SAO | - | yes | work in progress, hommage to Andy Anderson |
| Vendetta badge | SAO | - | yes | "remember, remember the 5th of November" - or anything else with the help of the little EEPROM on the back of this badge |
| Mr. Robot | SAO | yes | yes | with Attiny speaker https://hackaday.io/project/168037-mr-robot-shitty-addon |
| Penghito Poco | SAO | yes | - | small penghicorn badge |
| Do Or Donut | SAO | yes | - |  LED sprinkle matrix https://hackaday.io/project/168597-do-or-donut-sao |
| Knight Rider badge | SAO / pin | yes | yes | K.I.T.T. with animations thanks to an Attiny13 https://hackaday.io/project/25944-kitt-knight-rider-badgebrooch |
| sloth badge | pin | yes | - | inspired by some cute pimoroni pins, a sloth badge was formed https://hackaday.io/project/28330-sloth-badge |
| flux capacitor | pin | yes | - | with animations thanks to an Attiny13, the flux is flowing https://hackaday.io/project/25898-flux-capacitor-trinket|
| retro spacehuhn badge | pin | yes | - | RGB LED eyes on an olg Spacehuhn logo, with markers used for multicolor PCBs https://hackaday.io/project/33886-spacehuhn-badge |
| library stick  | other | yes | - | show off all your simple add-ons |


## Further designs

|Badge Name| Type | Eagle | Kicad | Description |
|----------|------|-------|-------|-------------|
| YoDawgSAO | SAO| - | yes| I heard you like badges on your badges? Here have some badges for your badges for your badges! https://github.com/davedarko/YoDawgSAO |
| T.A.R.S. | SAO| - | yes| Probably my most complex design, a small TARS with display and RP2040 https://github.com/davedarko/TARS-SAO |