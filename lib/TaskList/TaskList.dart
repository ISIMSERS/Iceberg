import 'package:flutter/material.dart';
import 'package:iceberg/Command/CommandList.dart';
import 'package:iceberg/Services/Authentication_services.dart';
import 'package:iceberg/TaskList/ListBody.dart';
import 'package:iceberg/splash.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool donneur = false;
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black54,
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black87,
              ),
              child: Container(
                child: const SizedBox(
                  height: 100,
                  width: double.infinity,
                ),
              ),
            ),
            donneur != true
                ? ListTile(
                    iconColor: Colors.white,
                    tileColor: Colors.black87,
                    textColor: Colors.white,
                    leading: const Icon(Icons.online_prediction_sharp),
                    title: const Text("Donneur Order"),
                    onTap: () {
                      print("Pressed");
                    },
                  )
                : const ListTile(),
            ListTile(
              tileColor: Colors.black,
              textColor: Colors.white,
              iconColor: Colors.white,
              leading: const Icon(Icons.list),
              title: const Text("Command"),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const CommandList()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Task List"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.logout,
            ),
            onPressed: () async {
              await Provider.of<AuthenticationService>(
                context,
                listen: false,
              ).signOut();
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const Splash()),
              );
            },
          ),
        ],
      ),
      body: ListBodyPage(),
    );
  }
}
