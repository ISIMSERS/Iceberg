import 'package:flutter/material.dart';
import 'package:iceberg/Login/Button.dart';
import 'package:iceberg/Login/InputField.dart';

class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: InputField(),
          ),
          const SizedBox(
            height: 40,
          ),
          const Button(),
        ],
      ),
    );
  }
}
