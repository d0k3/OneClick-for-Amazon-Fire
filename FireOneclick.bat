@echo off

echo .
echo ------------------------------
echo Disabling OTA updates...
echo ------------------------------
adb.exe wait-for-device
adb.exe uninstall -k --user 0 com.amazon.settings.systemupdates
adb.exe uninstall -k --user 0 com.amazon.device.software.ota
adb.exe uninstall -k --user 0 com.amazon.kindle.otter.oobe.forced.ota

echo .
echo ------------------------------
echo Removing lockscreen ads...
echo ------------------------------
adb.exe wait-for-device
adb.exe uninstall -k --user 0 com.amazon.kindle.kso

echo .
echo ------------------------------
echo Installing Google Play...
echo ------------------------------
adb.exe wait-for-device
cd google
adb.exe install com.google.android.gsf.login.apk
adb.exe install com.google.android.gsf.apk
adb.exe install com.google.android.gms.apk
adb.exe install com.android.vending.apk
cd ..

echo .
echo ------------------------------
echo Debloating device...
echo ------------------------------
adb.exe wait-for-device
adb.exe uninstall -k --user 0 amazon.alexa.tablet
adb.exe uninstall -k --user 0 amazon.jackson19
adb.exe uninstall -k --user 0 com.amazon.advertisingidsettings
adb.exe uninstall -k --user 0 com.amazon.ags.app
adb.exe uninstall -k --user 0 com.amazon.avod
adb.exe uninstall -k --user 0 com.amazon.alta.h2clientservice
adb.exe uninstall -k --user 0 com.amazon.client.metrics
adb.exe uninstall -k --user 0 com.amazon.cloud9
adb.exe uninstall -k --user 0 com.amazon.cloud9.contentservice
adb.exe uninstall -k --user 0 com.amazon.cloud9.kids
adb.exe uninstall -k --user 0 com.amazon.cloud9.systembrowserprovider
adb.exe uninstall -k --user 0 com.amazon.com.alexa.tablet
adb.exe uninstall -k --user 0 com.amazon.csapps
adb.exe uninstall -k --user 0 com.amazon.csapp
adb.exe uninstall -k --user 0 com.amazon.dee.app
adb.exe uninstall -k --user 0 com.amazon.device.backup
adb.exe uninstall -k --user 0 com.amazon.device.backup.sdk.internal.library
adb.exe uninstall -k --user 0 com.amazon.device.crashmanager
adb.exe uninstall -k --user 0 com.amazon.device.logmanager
adb.exe uninstall -k --user 0 com.amazon.device.software.ota
adb.exe uninstall -k --user 0 com.amazon.device.sync
adb.exe uninstall -k --user 0 com.amazon.device.sync.sdk.internal
adb.exe uninstall -k --user 0 com.amazon.dp.contacts
adb.exe uninstall -k --user 0 com.amazon.dp.fbcontacts
adb.exe uninstall -k --user 0 com.amazon.dp.logger
adb.exe uninstall -k --user 0 com.amazon.geo.client.maps
adb.exe uninstall -k --user 0 com.amazon.geo.mapsv2
adb.exe uninstall -k --user 0 com.amazon.geo.mapsv2.services
adb.exe uninstall -k --user 0 com.amazon.goodreads.kindle
adb.exe uninstall -k --user 0 com.amazon.h2settingsfortablet
adb.exe uninstall -k --user 0 com.amazon.kcp.tutorial
adb.exe uninstall -k --user 0 com.amazon.kindle
adb.exe uninstall -k --user 0 com.amazon.kindle.cms
adb.exe uninstall -k --user 0 com.amazon.kindle.devicecontrols
adb.exe uninstall -k --user 0 com.amazon.kindle.kso
adb.exe uninstall -k --user 0 com.amazon.kindle.otter.oobe.forced.ota
:: adb.exe uninstall -k --user 0 com.amazon.kindle.otter.settings
adb.exe uninstall -k --user 0 com.amazon.kindle.personal_video
adb.exe uninstall -k --user 0 com.amazon.kindle.unifiedSearch
adb.exe uninstall -k --user 0 com.amazon.legalsettings
adb.exe uninstall -k --user 0 com.amazon.logan
adb.exe uninstall -k --user 0 com.amazon.mp3
adb.exe uninstall -k --user 0 com.amazon.ods.kindleconnect
adb.exe uninstall -k --user 0 com.amazon.parentalcontrols
adb.exe uninstall -k --user 0 com.amazon.photos
adb.exe uninstall -k --user 0 com.amazon.photos.importer
adb.exe uninstall -k --user 0 com.amazon.platform
adb.exe uninstall -k --user 0 com.amazon.pm
adb.exe uninstall -k --user 0 com.amazon.precog
adb.exe uninstall -k --user 0 com.amazon.readynowcore
adb.exe uninstall -k --user 0 com.amazon.recess
adb.exe uninstall -k --user 0 com.amazon.socialplatform
adb.exe uninstall -k --user 0 com.amazon.tahoe
adb.exe uninstall -k --user 0 com.amazon.unifiedsharefacebook
adb.exe uninstall -k --user 0 com.amazon.unifiedsharegoodreads
adb.exe uninstall -k --user 0 com.amazon.unifiedsharesinaweibo
adb.exe uninstall -k --user 0 com.amazon.unifiedsharetwitter
adb.exe uninstall -k --user 0 com.amazon.vans.alexatabletshopping.app
adb.exe uninstall -k --user 0 com.amazon.venezia
adb.exe uninstall -k --user 0 com.amazon.webapp
adb.exe uninstall -k --user 0 com.amazon.whisperlink.activityview.android
adb.exe uninstall -k --user 0 com.amazon.whisperlink.core.android
adb.exe uninstall -k --user 0 com.amazon.whisperplay.contracts
adb.exe uninstall -k --user 0 com.amazon.windowshop
adb.exe uninstall -k --user 0 com.amazon.zico
adb.exe uninstall -k --user 0 com.audible.application.kindle
adb.exe uninstall -k --user 0 com.goodreads.kindle
adb.exe uninstall -k --user 0 com.here.odnp.service
adb.exe uninstall -k --user 0 com.kingsoft.office.amz
adb.exe uninstall -k --user 0 org.mopria.printplugin

echo .
echo ------------------------------
echo Installing APKs...
echo ------------------------------
adb.exe wait-for-device
cd apk
for %%x in (*.apk) do adb.exe install %%x
cd ..
