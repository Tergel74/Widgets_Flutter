import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets Project 1',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const PageNav(),
    );
  }
}

class PageNav extends StatefulWidget {
  const PageNav({Key? key}) : super(key: key);

  @override
  State<PageNav> createState() => _PageNavState();
}

class _PageNavState extends State<PageNav> {
  String title = 'First Page';
  String firstPage = 'First Page';
  String secondPage = 'Second Page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          toolbarHeight: 100,
          actions: [
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text(firstPage),
                  value: firstPage,
                ),
                PopupMenuItem(
                  child: Text(secondPage),
                  value: secondPage,
                )
              ],
              onSelected: (String newValue) {
                setState(() {
                  title = newValue;
                });
              },
            ),
          ],
        ),
        body: Center(
          child: Text(
            'This is the $title of the app.',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
