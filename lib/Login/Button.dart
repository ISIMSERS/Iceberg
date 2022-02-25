import 'package:flutter/material.dart';
import 'package:iceberg/TaskList/TaskList.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 60.0,
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        width: 320.0,
        decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TextButton(
          child: const Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const TaskList()));
          },
        ),
      ),
    );
  }
}
