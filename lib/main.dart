// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text("Tap Me!"),
          color: CupertinoColors.activeGreen,
          onPressed: () {
            showDesertAlertDialog(context);
          },
        ),
      ),
    );
  }
}

void showDesertAlertDialog(BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: const Text("Like Old-Monk"),
      actions: <Widget>[
        CupertinoDialogAction(
          child: const Text("Nope"),
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        CupertinoDialogAction(
          child: const Text("Absolutely!"),
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
