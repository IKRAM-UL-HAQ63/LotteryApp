import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<MyApp> createState() => LotteryApp();
}

class LotteryApp extends State<MyApp> {
  Random rand = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Lottery App'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lottery App',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Lottery Winning Number is --> 5 ',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              Container(
                height: 250,
                width: 300,
                color: Colors.grey.withAlpha(100),
                child: Center(
                  child: x == 5
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check,
                              color: Colors.green,
                              size: 50,
                              weight: 10.0,
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Congratulation You Won the Lottery: Your number is $x ',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.error, color: Colors.red, size: 50),
                            SizedBox(height: 10),
                            Text(
                              'Better Luck Next Time: Your number is $x \n Try Again!',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          elevation: 24,
          foregroundColor: Colors.white,
          onPressed: () {
            x = rand.nextInt(6);
            setState(() {});
          },
          child: Icon(Icons.refresh, size: 30),
        ),
      ),
    );
  }
}
