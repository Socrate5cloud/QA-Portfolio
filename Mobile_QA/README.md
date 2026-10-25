# Mobile QA Practice

Практика мобильного тестирования Android-приложения My Demo App на Android Emulator.

## Environment

- Android Emulator: `SDK_gphone64_x86_64`
- Android: 17
- API: 37
- Architecture: x86_64
- Test application: My Demo App
- Package: `com.saucelabs.mydemoapp.android`

## Tools

- Android Studio
- Android Emulator
- ADB
- Logcat
- Windows PowerShell

## Practiced scenarios

- Проверка установки приложения через ADB
- Переустановка приложения с сохранением данных (`adb install -r`)
- Удаление приложения (`adb uninstall`)
- Проверка установленного package
- Получение APK с эмулятора через `adb pull`
- Launch / force-stop приложения
- Проверка PID процесса
- Очистка данных приложения
- Анализ Android lifecycle
- Работа с Logcat
- Фильтрация Warning / Error / ANR
- Проверка background / foreground
- Проверка блокировки и разблокировки устройства
- Проверка поворота экрана
- Offline testing
- Потеря и восстановление сети
- Проверка Wi-Fi и mobile data через ADB
- Проверка Camera permission
- Permission grant / revoke через ADB
- Проверка repeated denial и `USER_FIXED`
- Проверка Precise / Approximate Location
- Передача тестовой геолокации через Android Emulator
- Проверка Dark Mode
- Проверка Font size / Display size
- Проверка UI на разных системных масштабах

## Found issue

При максимальном системном `Display size` в карточках товаров пятая звезда рейтинга частично обрезается справа.

**Severity:** Minor (S4)  
**Priority:** Medium

## Final mobile scenario

Проверен сценарий:

`Cart → Background → Network loss → Lock/Unlock → Network recovery → Foreground`

Результат:

- приложение восстановило рабочее состояние;
- товары и их количество в корзине сохранились;
- ANR не возник;
- после восстановления сети приложение продолжило работать;
- авторизация прошла успешно;
- checkout можно было продолжить.

## ADB commands used

```powershell
.\adb.exe devices

.\adb.exe shell getprop ro.build.version.release
.\adb.exe shell getprop ro.build.version.sdk
.\adb.exe shell getprop ro.product.model

.\adb.exe shell pm list packages -3
.\adb.exe shell pm path com.saucelabs.mydemoapp.android

.\adb.exe shell monkey -p com.saucelabs.mydemoapp.android 1
.\adb.exe shell am force-stop com.saucelabs.mydemoapp.android
.\adb.exe shell pm clear com.saucelabs.mydemoapp.android

.\adb.exe shell pidof com.saucelabs.mydemoapp.android

.\adb.exe logcat
.\adb.exe logcat -c
.\adb.exe logcat -d

.\adb.exe shell svc wifi disable
.\adb.exe shell svc wifi enable
.\adb.exe shell svc data disable
.\adb.exe shell svc data enable

.\adb.exe shell pm grant com.saucelabs.mydemoapp.android android.permission.CAMERA
.\adb.exe shell pm revoke com.saucelabs.mydemoapp.android android.permission.CAMERA

.\adb.exe install .\MyDemoApp.apk
.\adb.exe install -r .\MyDemoApp.apk
.\adb.exe uninstall com.saucelabs.mydemoapp.android
```

## Result

Получена практическая база мобильного тестирования Android: работа с эмулятором, ADB, Logcat, permissions, network conditions, lifecycle, installation flows и UI compatibility testing.
