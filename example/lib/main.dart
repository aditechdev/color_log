import 'package:color_log/color_log.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

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
