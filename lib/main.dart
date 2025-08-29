import 'package:diaria_ui/app/app_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diaria UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const Application(),
    );
  }
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Diaria UI"),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),

        children: [
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => AppList()),
                );
              },
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "App",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      "App Screen Collection",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    leading: Icon(Icons.chevron_left),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Home",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      "Home UI Collection",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    leading: Icon(Icons.chevron_left),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
