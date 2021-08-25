import 'package:flutter/material.dart';
import 'package:spirah_assignment/dataOut.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff5f5f5),
        appBar: AppBar(
          title: Text('Demo'),
        ),
        body: CustomScrollView(
          slivers: [
            // Displaying items with only rolls category
            SliverToBoxAdapter(
              child: Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(16.0),
                child: Text('Rolls', style: TextStyle(fontSize: 28)),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                      child: ((dataOutput[index]['category'] == "Rolls")
                          ? ListTile(
                              title: Text(dataOutput[index]['productName']))
                          : Container()));
                },
                childCount: dataOutput.length,
              ),
            ),
            // Displaying items with only appetizer category
            SliverToBoxAdapter(
              child: Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(16.0),
                child: Text('Appetizer', style: TextStyle(fontSize: 28)),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                      child: ((dataOutput[index]['category'] == "Appetizer")
                          ? ListTile(
                              title: Text(dataOutput[index]['productName']))
                          : Container()));
                },
                childCount: dataOutput.length,
              ),
            ),
            // Displaying items with only biryanis category
            SliverToBoxAdapter(
              child: Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(16.0),
                child: Text('Biryanis', style: TextStyle(fontSize: 28)),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                      child: ((dataOutput[index]['category'] == "Biryanis")
                          ? ListTile(
                              title: Text(dataOutput[index]['productName']))
                          : Container()));
                },
                childCount: dataOutput.length,
              ),
            ),
            // Displaying items with only soup category
            SliverToBoxAdapter(
              child: Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(16.0),
                child: Text('Soups', style: TextStyle(fontSize: 28)),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                      child: ((dataOutput[index]['category'] == "Soups")
                          ? ListTile(
                              title: Text(dataOutput[index]['productName']))
                          : Container()));
                },
                childCount: dataOutput.length,
              ),
            ),

            // Displaying items with only rice category
            SliverToBoxAdapter(
              child: Container(
                color: Colors.orange,
                padding: const EdgeInsets.all(16.0),
                child: Text('Rice', style: TextStyle(fontSize: 28)),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                      child: ((dataOutput[index]['category'] == "Rice")
                          ? ListTile(
                              title: Text(dataOutput[index]['productName']))
                          : Container()));
                },
                childCount: dataOutput.length,
              ),
            ),
          ],
        ));
  }
}
