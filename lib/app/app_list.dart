import 'package:diaria_ui/app/paynex/paynex_home.dart';
import 'package:flutter/material.dart';

class AppList extends StatefulWidget {
  const AppList({super.key});

  @override
  State<AppList> createState() => _AppListState();
}

class _AppListState extends State<AppList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("App List"),
      ),
      body: ListView(
        padding: EdgeInsets.all(5),

        children: [
          Card(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(builder: (context) => PayhexHome()),
                );
              },
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      "Paynex",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    subtitle: Text(
                      "Finance Mobile App Deisgn Clean and Mordern",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    leading: Icon(Icons.link),
                  ),
                ],
              ),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
