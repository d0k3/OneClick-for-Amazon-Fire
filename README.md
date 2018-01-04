# OneClick for Amazon Fire
One click script for de-Amazonifying Amazon Fire tablets

## What it does
This script is intended as a means to quickly and easily set up an out-of-the-package Amazon Kindle tablet. Be warned, the FireLauncher *is crippled by this script* - several things about it will no more work. You get an alternative launcher, though, and you can always go back via a factory reset. Here's what you get:
* OTA Updates are blocked
* Lockscreen ads are removed
* Functional Google Play Store and Google Go search are installed
* Bloatware is removed from the tablet
* Functional Nova Launcher, Adblocker (DNS66) and light Youtube Client (NewPipe) are installed

Keep in mind this is only tested with an Amazon Fire 7 (2017 / 7th gen) on OS version 5.4.0.0 via Windows 10. It should work on other tablet versions, too. **It will not work on any version above** and there are better tools available for OS versions below v5.3.2.1 (= root).

## Prequisites
This script expects [adb](https://adb.clockworkmod.com/) to be setup on your system and [Amazon Fire drivers](https://s3.amazonaws.com/android-sdk-manager/redist/kindle_fire_usb_driver.zip) to be installed. A more in depth explanation & troubleshooting [is found here](https://developer.amazon.com/de/docs/fire-tablets/ft-set-up-your-kindle-fire-tablet-for-testing.html#enable-adb-on-your-fire-tablet).

## Out-of-the-package instructions
So, here's what you do, step by step.
* Power on your Fire tablet, do the initial setup. **DO NOT CONNECT TO WIFI**. Instead, select any password protected wifi, then cancel, and initial setup will let you continue without internet.
* Enter `Settings` -> `Device options` -> click `Serial` 7 times. A new menu entrypoint called `Developer options` will pop up.
* In `Developer options`, `enable ADB`, then connect your tablet to your computer. Confirm the fingerprint. If that didn't work, look [here](https://developer.amazon.com/de/docs/fire-tablets/ft-set-up-your-kindle-fire-tablet-for-testing.html#enable-adb-on-your-fire-tablet) for troubleshooting.
* Now, extract the contents of this package somewhere on your computer and double click `FireOneClick.bat`.
* You can watch how Amazon's apps vanish, but it is recommended not to do anything else with your tablet while the script does its work.
* After it's finished, enter `Settings` -> `Accesibility` -> enable `To detect home button press`. Then, open the `LauncherHijack` app and select `Nova Launcher`.
* Open the `DNS66` app and start it. This will run in background (at low memory consumption) and block ads.

## Notes
Several things you may need to know:
* This is not root, and it's also not a proper launcher replacement. It is very close, though. At times the FireLauncher may shortly (less than 1sec) show up on the screen when the HOME button is pressed.
* You can further customize this script to your needs by putting more apps inside the `apk` folder. Everything inside that folder will be auto-installed. You can also remove stuff from there, of course.
* Amazon account setup is deliberately left functional, so you can still change the name of your tablet. The Amazon account will not be used in the current state of your tablet.
* Other than [savvytechwinner's work](https://forum.xda-developers.com/amazon-fire/general/amazon-fire-utility-tool-bloat-removal-t3641151), this will leave `Clock`, `Calculator`, `Email` and `Calendar` functional. Personal choice here, I don't consider that bloat.
* Widgets will not work. The original script had a supposed workaround that never worked for me, so I left it out. Widgets are not recommended on 1GB RAM devices anyways ¯\\_(ツ)_/¯.
* Stuff like that is normally supposed to void your warranty. Here you can go back any time via a factory reset. Still, **I'm not responsible for anything that may go wrong using this script**. You're on your own here.

## Credits
Most of this is not my own work, but rather a remix / improvement of other peoples work. Thanks go to the following people:
* [savvytechwinner](https://forum.xda-developers.com/amazon-fire/general/amazon-fire-utility-tool-bloat-removal-t3641151) and [Wicki](https://www.android-hilfe.de/forum/amazon-fire.2359/amazon-fire-namensgebung.839052-page-2.html) - this script is based on their work
* Google, for providing the Play Store and the Google Go search app
* [Julian Klode](https://github.com/julian-klode/dns66) for DNS66
* [Team NewPipe](https://github.com/TeamNewPipe/NewPipe) for NewPipe
* [TeslaCoil Software](https://play.google.com/store/apps/details?id=com.teslacoilsw.launcher&hl=de) for Nova Launcher
* [BaronKiko](https://github.com/BaronKiko/LauncherHijack) for Launcher Hijack
