import 'package:flutter/material.dart';
import 'package:intento_de_flutter/trip_detail.dart';

import 'trip_preview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wanderer',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: 'Timeline Page'),
      initialRoute: '/',
      routes: {
        //'/': (context) => const MyHomePage(title: 'Timeline Page'), //redundant bc we have specified home
        TripDetail.routeName: (context) => const TripDetail(), //esto registra la ruta de la pantalla TripDetail
    },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //podemos checkear el codigo original para ver como se editava el estado

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    List<TripPreview> trips = [TripPreview(), TripPreview(), TripPreview(), TripPreview(), TripPreview()];  //posts to show in the timeline
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,  //probar shifting? no se que es
        backgroundColor: Colors.cyan,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.cyanAccent,
        items: const [BottomNavigationBarItem(icon: Icon(Icons.home), label: "Timeline", ), BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"), BottomNavigationBarItem(icon: Icon(Icons.add), label: "Create trip"), BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded), label: "Profile")],
      ),
      //he quitado el center
      body: Column(
          //comments borrados
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                child: ListView(
                  //itemExtent: 50,
                  children: trips,
                  //shrinkWrap: true,

                )
            )
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
