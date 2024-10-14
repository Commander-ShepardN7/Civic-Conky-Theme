# Civic Conky Theme
Conky theme for Linux. Named it Civic because i really like Honda Civics. Credit to igorw765 (https://github.com/igorw765) for the Spotify scripts. This theme displays system information, current weather and forecast, Gmail inbox, Spotify information and has CalCurse support.

# Requirements
- Conky (obviously)
- Cairo
- Playerctl
- Jq
- ffmpeg
- Sed (formatting)
- Sensors (CPU temperature)
- CalCurse (calendar)
- AnsiWeather
- Git (for cloning this repo)
- I *really* reccommend installing Conky Manager

# Installation
1. Install the required dependencies if they aren't already installed

```sudo apt-get install conky calcurse jq lm-sensors ansiweather cairo ffmpeg playerctl sed git```

2. Clone the repo

```https://github.com/Commander-ShepardN7/Civic-Conky-Theme```

3. Play with the ```offset```, ```voffset``` and ```align``` variables since i made this theme on a 1920x1080 monitor. I also moved it to my second monitor, so adjust ```gap_x gap_y```. That's why i reccommend using Conky Manager.

4. Run each of the ```start.sh``` to start the themes

# Setting preferences and widgets

You'll need to manually set some stuff

- Civic Notifications and Feeds
1. Gmail:Go to https://support.google.com/accounts/answer/185833?hl=en and follow instructions (you'll ned to enable 2-step verification on your Google account). Copy the 16-digit password (delete blank spaces), and follow instructions in the .conf file
2. Exchange Rate: go to any site that offers APIs for exchange rates between currencies. You can delete this if not interested
3.Science feed: go to any news outlet that offers RSS feeds and change the URL on the config file. That's all.
4. YouTube feeds: go to any YouTube channel you want, press ```F12```, and search ```https://www.youtube.com/channel/``` on the inspector. You'll find the cannel ID necessary (it always goes UC3xxxxxxxxxxxxxxxxxxxx, replace that an the channel name on the .conf file)
5. Agenda: You need CalCurse fo this to work. You can either create your events on CalCurse directly (like a true GigaChad) or import an iCal file (like from Google Calendar), and then save it. The way i wrote the config file, every event from the same date will be displayed on the same line. I don't know how much this will hold or if it will break in the future, but if it breaks for you, open an Issue. The ```exam.sh``` file is a custom script that displays a countdown, i left the script with generic blanks so you can fill them in with your actual exam dates/deadlines. It's a separate addon to the agenda, if you delete this CalCurse will still run as intended

- Civic System
1. There isn't much to change here, luckily. You'll only need to set file system path and a network address (run ```ip addr show``` on the terminal and copy the output that goes like wlxxxxxxxxxxxx, usually the forth one)
2. Desktop: this is the most ungabunga part of the whole theme. It's a blank space that has enough space for 9 desktop icons. Place anything you like there, keep in mind that if you change the positioning of this config file, it probably won't be as aligned (IMPORTANT: I'm on GNOME, so when i click on anywhere on the screen, the icons pop to the front. I had some issues making the icons display on top of Conky on XFCE, so there's that. Open an issue if that's the case and i'll see what can i do)

- Civic weather
1. Unlike most themes that use OpenWeather, I decided to use AnsiWeather. It's quite easy to use, the city id is given by "City,CO" (CO = country). My location code had 16 digits, so enter your location and calculate the difference in digits between your location and 16. Substract or add the amount of digits from the ```cut -c``` function. For example, if you live in Los Angeles (ansiweather location "Los Angeles,US"), which has 14 digits, you need to substract 2 from  every ```cut -c``` function there is. Play around with it until the display is the desired one.

- Civic Music
1. You actually don't need to do anything with this one. The script will delete artwork when it detects that Spotify isn't running, sometimes it will glitch out and not display any artwork (possibly due to the script not fetching the artwork after it deletes it). Change song (preferably from another album) or restart the theme if this happens, normally happens with local files.

# Tested Enviroment
This theme was made on Pop!_OS 22.04 using GNOME 42.9. 

# Screenshot
![Unsaved Image 1](https://github.com/user-attachments/assets/32afa17c-4832-48bf-9ecf-8685cff9a24e)


# License 
This project is licensed under the GPL-3.0 License. See the License file for details.


