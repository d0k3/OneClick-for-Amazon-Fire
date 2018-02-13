#bin/sh

echo .
echo ------------------------------
echo Disabling OTA updates...
echo ------------------------------
adb wait-for-device
adb uninstall -k --user 0 com.amazon.settings.systemupdates
adb uninstall -k --user 0 com.amazon.device.software.ota
adb uninstall -k --user 0 com.amazon.kindle.otter.oobe.forced.ota

echo .
echo ------------------------------
echo Removing lockscreen ads...
echo ------------------------------
adb wait-for-device
adb uninstall -k --user 0 com.amazon.kindle.kso

echo .
echo ------------------------------
echo Installing Google Play...
echo ------------------------------
adb wait-for-device
cd google
#adb install com.google.android.gsf.login.apk
#adb install com.google.android.gsf.apk
#adb install com.google.android.gms.apk
#adb install com.android.vending.apk
cd ../

echo .
echo ------------------------------
echo Debloating device...
echo ------------------------------
adb wait-for-device
adb uninstall -k --user 0 amazon.alexa.tablet
adb uninstall -k --user 0 amazon.jackson19
adb uninstall -k --user 0 com.amazon.advertisingidsettings
adb uninstall -k --user 0 com.amazon.ags.app
adb uninstall -k --user 0 com.amazon.avod
adb uninstall -k --user 0 com.amazon.alta.h2clientservice
adb uninstall -k --user 0 com.amazon.client.metrics
adb uninstall -k --user 0 com.amazon.cloud9
adb uninstall -k --user 0 com.amazon.cloud9.contentservice
adb uninstall -k --user 0 com.amazon.cloud9.kids
adb uninstall -k --user 0 com.amazon.cloud9.systembrowserprovider
adb uninstall -k --user 0 com.amazon.com.alexa.tablet
adb uninstall -k --user 0 com.amazon.csapps
adb uninstall -k --user 0 com.amazon.csapp
adb uninstall -k --user 0 com.amazon.dee.app
adb uninstall -k --user 0 com.amazon.device.backup
adb uninstall -k --user 0 com.amazon.device.backup.sdk.internal.library
adb uninstall -k --user 0 com.amazon.device.crashmanager
adb uninstall -k --user 0 com.amazon.device.logmanager
adb uninstall -k --user 0 com.amazon.device.software.ota
adb uninstall -k --user 0 com.amazon.device.sync
adb uninstall -k --user 0 com.amazon.device.sync.sdk.internal
adb uninstall -k --user 0 com.amazon.dp.contacts
adb uninstall -k --user 0 com.amazon.dp.fbcontacts
adb uninstall -k --user 0 com.amazon.dp.logger
adb uninstall -k --user 0 com.amazon.geo.client.maps
adb uninstall -k --user 0 com.amazon.geo.mapsv2
adb uninstall -k --user 0 com.amazon.geo.mapsv2.services
adb uninstall -k --user 0 com.amazon.goodreads.kindle
adb uninstall -k --user 0 com.amazon.h2settingsfortablet
adb uninstall -k --user 0 com.amazon.kcp.tutorial
adb uninstall -k --user 0 com.amazon.kindle
adb uninstall -k --user 0 com.amazon.kindle.cms
adb uninstall -k --user 0 com.amazon.kindle.devicecontrols
adb uninstall -k --user 0 com.amazon.kindle.kso
adb uninstall -k --user 0 com.amazon.kindle.otter.oobe.forced.ota
#adb uninstall -k --user 0 com.amazon.kindle.otter.settings
adb uninstall -k --user 0 com.amazon.kindle.personal_video
adb uninstall -k --user 0 com.amazon.kindle.unifiedSearch
adb uninstall -k --user 0 com.amazon.legalsettings
adb uninstall -k --user 0 com.amazon.logan
adb uninstall -k --user 0 com.amazon.mp3
adb uninstall -k --user 0 com.amazon.ods.kindleconnect
adb uninstall -k --user 0 com.amazon.parentalcontrols
adb uninstall -k --user 0 com.amazon.photos
adb uninstall -k --user 0 com.amazon.photos.importer
adb uninstall -k --user 0 com.amazon.platform
adb uninstall -k --user 0 com.amazon.pm
adb uninstall -k --user 0 com.amazon.precog
adb uninstall -k --user 0 com.amazon.readynowcore
adb uninstall -k --user 0 com.amazon.recess
adb uninstall -k --user 0 com.amazon.socialplatform
adb uninstall -k --user 0 com.amazon.tahoe
adb uninstall -k --user 0 com.amazon.unifiedsharefacebook
adb uninstall -k --user 0 com.amazon.unifiedsharegoodreads
adb uninstall -k --user 0 com.amazon.unifiedsharesinaweibo
adb uninstall -k --user 0 com.amazon.unifiedsharetwitter
adb uninstall -k --user 0 com.amazon.vans.alexatabletshopping.app
adb uninstall -k --user 0 com.amazon.venezia
adb uninstall -k --user 0 com.amazon.webapp
adb uninstall -k --user 0 com.amazon.whisperlink.activityview.android
adb uninstall -k --user 0 com.amazon.whisperlink.core.android
adb uninstall -k --user 0 com.amazon.whisperplay.contracts
adb uninstall -k --user 0 com.amazon.windowshop
adb uninstall -k --user 0 com.amazon.zico
adb uninstall -k --user 0 com.audible.application.kindle
adb uninstall -k --user 0 com.goodreads.kindle
adb uninstall -k --user 0 com.here.odnp.service
adb uninstall -k --user 0 com.kingsoft.office.amz
adb uninstall -k --user 0 org.mopria.printplugin

echo .
echo ------------------------------
echo Installing APKs...
echo ------------------------------
adb wait-for-device
cd apk
for f in *.apk
do 
	adb install "$f"
done
cd ../
