import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "stack",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Stack, Positioned, Align",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.w700, color: Colors.amber),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.deepPurple,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.amber,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.lightBlue,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.amber,
              ),
            ),
          ],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
              bottomRight: Radius.circular(35),
            ),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 400,
                      width: 400,
                      color: Colors.green,
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      color: Colors.grey,
                    ),
                    Positioned(
                      top: -50,
                      // bottom: 0,
                      // right: 0,
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
