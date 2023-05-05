<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

`ColorLog` is a flutter package to help the developer get noticible `Log` with color and emoji 💔✅

- This package will help the developer to get there log different from the messy blue color text

- There different emoji make the log noticible



## Features

This package has 8 varities of log
- info : This will help the developer to get info
- warning: To see the warning
- error: To check the error, add it in the api call, catch
- debug: To use while debuging
- checkSuccess: To check boolean value, which will give print the log in true and false
- custom: This will give you freedom to use color, emoji and log type of your choice, 

## Getting started

Search for the package color log in pub.dev

## Usage

<!-- TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. -->

```dart
String temp = "colorLog"
clog.info($temp);
clog.warning($temp);
clog.error($temp);
clog.debug($temp);
clog.checkSuccess(1 == 1, "TO Verify 1==1");
clog.checkSuccess(1 == 2, "TO Verify 1==2");
clog.custom(message: "This is custom log", emoji: "🍃" , ansiColor: "Any ANSI color", logType: "custom");


```

## Additional information

To see more detail go to github
