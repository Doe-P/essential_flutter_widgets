import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});

  int? number = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                number.toString(),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 48,
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    number = number! + 1;
                  },
                  child: Text(
                    'Increment',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  )),
            ),
          ],
        ));
  }
}
