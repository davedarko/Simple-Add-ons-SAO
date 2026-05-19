# SAO Simple Add-Ons
Hardware Conference Badges tend to turn very complex, so to allow people to add bling and memes to their badge, the SAO (then shitty add-on) standard was developed. It started as a 2x2 header with two power pins and two I2C pins for data and a clock signal. Let me introduce you to the standard and show you what can be achieved. This is one of my favorite things to design, as they can be nice little gifts and inspires a lot of people for future years to also design and gift some. 

They are perfect gifts and spark joy!

## The current header - V1.69bis
The header was expanded to a 2x3 ISP connector later. Looking at the simple add-on, this is the layout.

![Pinout](/img/content/SAOpinout.png "Render of front and backside of the simple add-on and the used header")

## ART - the process
It's easy enough to start PCB designs in KiCad! You can use GIMP for cool posterisation effects. Afterwards you can use inkscape to convert the image to SVG. By now KiCad allows for importing SVGs into layers, so you don't have to install svg2shenzhen and fiddle with knots. Another way to get on pretty art is using UV soldermask - which still feels  like cheating - JLCPCB and PCBWAY will happily produce them for you though. 

List of projects for inspiration: [https://hackaday.io/list/165860](https://hackaday.io/list/165860)


## different variants
A lot of people have designed many simple add-ons, ranging from meme PCB Art to useful tool to add. Here's a list of categories and examples what you can go for, when you design one.

### Class 1A - physical support
These badges don't need anything, except for a welcoming header. It's usually a badge where an image is more than enough to walk around with, like a meme or a perfect, artistic PCB.
- [SAOP example on hackaday.io](https://hackaday.io/project/198497-saop)
- [/Skate.md](index.php?page=content/Simple_Add-ons/2411_Skate.md)
- [/Maus_und_Brot.md](index.php?page=content/Simple_Add-ons/2510_Maus_und_Brot.md)

### Class 1B - (I2C) adapter
Use the I2C connection and make an adapter that allows you to connect anything that's connectable through I2C - why not connect a nunchuck to your badge, or make it possible to add grove or qwiic modules? Did you know there's I2C on HDMI?

### Class 2A - power, no computer required
Sometimes all you need is 3.3V from a header, this is what comes to mind:
With the shortest bom and no PCB necessary: just plug in a fading RGB LED, like Tina Belmont does! Or you can design a cute PCB that features self blinking, flickering or self fading LEDs - you could even use a 555 timer for it! This is something that requires no programming of any logic.
- [/COVID19_test.md](index.php?page=content/Simple_Add-ons/2211_COVID-19_test.md)
- [/GuyFawkes.md](index.php?page=content/Simple_Add-ons/2211_GuyFawkes.md)

### Class 2B - power - needs programming
They also blink on their own, but you have to make them first? This is the category for it. Yes, those badges technically do speak I2C, but they don't really act on that.
- [/Hans_SAOLO.md](index.php?page=content/Simple_Add-ons/2411_Hans_SAOLO.md)
- [/Mysterio.md](index.php?page=content/Simple_Add-ons/2501_Mysterio.md)


### Class 3 - the I2C breakout
You made a nice PCB for a cool I2C sensor, want to add a keyboard to your badge by using a GPIO expander or add some digital potentiometers - awesome! Your badge has to communicate with it, to be useful though!
- [/DoOrDonut.md](index.php?page=content/Simple_Add-ons/1911_DoOrDonut.md)
- [/Schedule.md](index.php?page=content/Simple_Add-ons/2411_Schedule.md)

### Class 4 - the sub-processor
You’re translating from SPI to I2C and the SAO talks to sensors, controls displays
or makes communication with something easier. 
- [/Mr_Robot.md](index.php?page=content/Simple_Add-ons/1909_MrRobot.md)

### Class 5 - should have been a badge
These Add-ons are far from being simple! They are badges that are similar or higher in complexity than the badge it’s sitting on. Look at the Speak'n'Spell, Digital multimeter or my TARS SAO for an example.
- [/TARS.md](index.php?page=content/Simple_Add-ons/2411_TARS.md)

### Class 0 - Simple Add-ons Add-ons (SAOAO)
There's a new add-on standard in town, that is even simpler! It even is featured on another badge, so it totally is a standard now! Do I hate myself for using a 1.27mm header? Obviously! The pinout is super simple though and it doesn't matter if it's flipped, upside-down or mirrored. You just get power though! Just don't offset the pins by one, that is probably a bad idea.

To learn more, follow the link [/YoDAWG.md](index.php?page=content/Simple_Add-ons/2411_YoDAWG.md)

## Hack-A-Day SuperCon Add-On
Over the years Hackaday managed to bring out 5 badges with a simple add-on connector (as of 9th Oct 2025). One badge - the simple add-on heptagon - got it right.  

![Pinout](/img/content/SuperConAddOns.png "Table of pinouts of the connector on the supercon badges over the years")


## other add-on standards
Some very noteable mentions:
* there's the EMF tildagon badge, that features a cool header and allows for 6 add-ons - or hexpansions - to be connected to.  
[https://tildagon.badge.emfcamp.org/hexpansions/creating-hexpansions/](https://tildagon.badge.emfcamp.org/hexpansions/creating-hexpansions/)
* saintcon minibadges  
 - [https://www.saintcon.org/com-minibadge/](https://www.saintcon.org/com-minibadge/)
 - [https://github.com/lukejenkins/minibadge](https://github.com/lukejenkins/minibadge)


## Links
- me on the hackaday supercon 2024 stage, talking about simple add-ons  
[https://www.youtube.com/watch?v=Q_YbHZDzzh0](https://www.youtube.com/watch?v=Q_YbHZDzzh0)
- introduction to the standard on the blog of hackaday  
[https://hackaday.io/project/52950-shitty-add-ons](https://hackaday.io/project/52950-shitty-add-ons)
- introduction to the updated standard V1.69bis on commmunity projects page of hackaday  
[https://hackaday.com/2019/03/20/introducing-the-shitty-add-on-v1-69bis-standard/](https://hackaday.com/2019/03/20/introducing-the-shitty-add-on-v1-69bis-standard/)
- All simple add-ons that I've designed have a shared  
[https://github.com/davedarko/Simple-Add-ons-SAO](https://github.com/davedarko/Simple-Add-ons-SAO)