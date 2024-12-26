import 'package:flutter/material.dart';
import 'package:potatotechapp/tabElements.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const DefaultTabController(
          length: 3,
          child: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const TabBar(tabs: [
          Tab(
              icon: Icon(Icons.mobile_screen_share_sharp),
              text: 'Smart Phones'),
          Tab(
            icon: Icon(Icons.newspaper),
            text: 'News',
          ),
          Tab(
            icon: Icon(Icons.play_circle_fill_outlined),
            text: 'Videos',
          ),
        ]),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        centerTitle: true,
        //title: Image.asset('assets/title.png', fit: BoxFit.cover),
        title: const Text(
          "PotatoTech",
          style: TextStyle(color: Color.fromARGB(255, 77, 77, 77)),
        ),
      ),
      drawer: const Drawer(
        elevation: 10,
      ),
      body: const TabbedElement(), // Add a Drawer here in the next step.
    );
  }
}
