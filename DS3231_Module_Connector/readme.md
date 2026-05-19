# The Schedule SAO

This is an adapter for a generic DS3231 module that features an AT24C32. The module features a 4kb eeprom IC, so it should be possible to show the schedule on your badge, if you know how to read the schedule and check the time from the DS3231.

## Idea
I like a good schedule, at least one that features the time axis like https://supercon.davedarko.com/supercon24.php has. You can easily understand what's next and where to go. I hope that this module will make it easier to have the schedule of an event on a badge, if there are no web-enabled badges that can grab the time from a server and have a dedicated app in their python code for it already.  

For the silkscreen I tried to keep it simple and generic, but if you look closely, it matches the calendar view for November and the supercon weekend has three pads of tin instead of silkscreen. That is if your week doesn't start on Sunday - what a concept.

Since 2022 I'm running a little website with the schedule of the supercons / Europe events - it feels longer, but this is what I have. But I always wanted to have the schedule on my badge(s) as well and this feels like a reasonable aproach - you can reuse it for multiple events on multiple badges. 

I will try to make it as easy as possible to update the data on the eeprom,  hopefully with an export from my schedule site. https://supercon.davedarko.com/supercon24.php

The PCB is a small adapterboard, I used silkscreen to make it look a bit like a calendar showing the month November of 2024 with the supercon weekend being silver.

