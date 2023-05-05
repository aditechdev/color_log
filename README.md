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

[![pub package](https://img.shields.io/pub/v/color_log.svg?logo=dart&logoColor=00b9fc)](https://pub.dev/packages/color_log)
[![Last Commits](https://img.shields.io/github/last-commit/aditechdev/color_log?logo=git&logoColor=white)](https://github.com/aditechdev/color_log/commits/main)
[![Pull Requests](https://img.shields.io/github/issues-pr/aditechdev/color_log?logo=github&logoColor=white)](https://github.com/aditechdev/color_log/pulls)
[![Code size](https://img.shields.io/github/languages/code-size/aditechdev/color_log?logo=github&logoColor=white)](https://github.com/aditechdev/color_log)
[![License](https://img.shields.io/github/license/aditechdev/color_log?logo=open-source-initiative&logoColor=green)](https://github.com/aditechdev/color_log/blob/main/LICENSE)

<!-- [![CI](https://img.shields.io/github/actions/workflow/status/Bungeefan/logger/dart.yml?branch=master&logo=github-actions&logoColor=white)](https://github.com/Bungeefan/logger/actions) -->

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

```dart
    class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Button(
              onTap: () {
                clog.info("This is debug log");
              },
              text: "info",
              color: Colors.cyan,
            ),
            Button(
              onTap: () {
                clog.warning("This is warning log");
              },
              text: "warning",
              color: Colors.yellow,
            ),
            Button(
              onTap: () {
                clog.error("This is error log");
              },
              text: "error",
              color: Colors.red,
            ),
            Button(
              onTap: () {
                try {
                  throw Exception;
                } catch (e) {
                  clog.error(e.toString());
                  rethrow;
                }
              },
              text: "error with stacktrace",
              color: Colors.red,
            ),
            Button(
              onTap: () {
                clog.debug("This is debug log");
              },
              text: "debug",
              color: Colors.yellow,
            ),
            Button(
              onTap: () {
                clog.checkSuccess(1 == 1, "This is debug log");
              },
              text: "checkSuccess true",
              color: Colors.green,
            ),
            Button(
              onTap: () {
                clog.checkSuccess(1 != 1, "This is debug log");
              },
              text: "checkSuccess false",
              color: Colors.red,
            ),
            Button(
              onTap: () {
                clog.todo("This is TODO");
              },
              text: "TODO",
              color: Colors.pink,
            ),
            Button(
              onTap: () {
                clog.custom(
                    ansiColor: "\x1b[38;5;205m",
                    emoji: "🤓",
                    logType: "custom",
                    message: "This is custom");
              },
              text: "custom",
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key, this.onTap, this.text, this.color});
  final VoidCallback? onTap;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: color,
      margin: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        // style: MaterialStateProperty.all(value),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),

        onPressed: onTap,
        onHover: (c) {},
        child: Text(
          text!,
        ),
      ),
    );
  }
}



```



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
