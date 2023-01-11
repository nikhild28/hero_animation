import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation"),centerTitle: true,),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            child: Text("Next Page"),
            onPressed: () {
              //Onpresss
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Logo()));
            },
          ),
          Hero(
            tag: "FluterLogo",
            child: FlutterLogo(
              size: 100.0,
            ),
          )
        ],
      )),
    );
  }
}

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero animation"),
      ),
      body: Center(
        child: Hero(
          tag: "FluterLogo",
          child: FlutterLogo(
            size: 300.00,
          ),
        ),
      ),
    );
  }
}
