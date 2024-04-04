
import 'package:flutter/material.dart';

class MyAppExtraClass extends StatefulWidget {
  const MyAppExtraClass({super.key});

  @override
  State<MyAppExtraClass> createState() => _MyAppExtraClassState();
}

class _MyAppExtraClassState extends State<MyAppExtraClass> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid View Movement'),
        ),
        body: MyGridView(),
      ),
    );
  }
}
class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}



class _MyGridViewState extends State<MyGridView> {
  List<int> gridItems = [1, 2, 3, 4];
  List<int> selectedIndexes = [0, 1, 3, 2];
  int currentPosition = 0;

  void moveRight() {
    setState(() {
      if (currentPosition < selectedIndexes.length - 1) {
        currentPosition++;
      }
    });
  }

  void moveLeft() {
    setState(() {
      if (currentPosition > 0) {
        currentPosition--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.builder(
            itemCount: selectedIndexes.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // Handle item tap if needed
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  color: currentPosition == index
                      ? Colors.blue
                      : Colors.grey[300],
                  child: Center(
                    child: Text(
                      '${gridItems[selectedIndexes[index]]}',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: moveLeft,
              child: Icon(Icons.arrow_back),
            ),
            ElevatedButton(
              onPressed: moveRight,
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ],
    );
  }
}
