import 'package:flutter/material.dart';
import 'package:iceberg/Components/Command.dart';

class CommandList extends StatefulWidget {
  const CommandList({Key? key}) : super(key: key);

  @override
  State<CommandList> createState() => _CommandListState();
}

class _CommandListState extends State<CommandList> {
  @override
  Widget build(BuildContext context) {
    List? commands = [
      {
        "id": 1,
        "title": "Commande 1",
      },
      {
        "id": 2,
        "title": "Commande 2",
      },
      {
        "id": 3,
        "title": "Commande 3",
      },
    ];

    TextEditingController addCommandController = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Command"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        content: TextField(
                          controller: addCommandController,
                          decoration: const InputDecoration(
                            hintText: "Command title",
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Cancel"),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.cyan,
                              ),
                            ),
                            onPressed: () {
                              commands.add({
                                "id": commands.length + 1,
                                "title": addCommandController.text,
                              });
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Add",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      );
                    });
              });
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: commands.length,
        itemBuilder: (BuildContext buildContext, int i) {
          return ListTile(
            leading: const Icon(Icons.article),
            title: Text(commands[i]["title"]),
          );
        },
      ),
    );
  }
}
