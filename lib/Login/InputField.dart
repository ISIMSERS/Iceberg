import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController? emailController;
  final TextEditingController? passwordController = new TextEditingController();
  InputField({Key? key, this.emailController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          child: TextField(
            controller: emailController,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
                hintText: "Enter your email",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                border: InputBorder.none),
          ),
        ),
        Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.grey))),
            child: TextField(
              controller: passwordController,
              textInputAction: TextInputAction.done,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: InputBorder.none),
            )),
      ],
    );
  }
}
