import 'package:flutter/material.dart';

class ChessBoardScreen extends StatelessWidget {
  const ChessBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          '🏁 ChessBoard',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height:400,
          width: 400,
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  spreadRadius: 5,
                )
              ]
          ),
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              row1(),
              row2(),
              row1(),
              row2(),
              row1(),
              row2(),
              row1(),
              row2(),
            ],
          ),
        ),
      ) ,
      floatingActionButton:FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: Colors.black,
        child: const Icon(Icons.menu_open,color: Colors.white,size: 25,),
      ) ,
    );
  }
}

Row row1() {
  return Row(
    children: [
      greyColor(),
      blackColor(),
      greyColor(),
      blackColor(),
      greyColor(),
      blackColor(),
      greyColor(),
      blackColor(),
    ],
  );
}

Row row2() {
  return Row(
    children: [
      blackColor(),
      greyColor(),
      blackColor(),
      greyColor(),
      blackColor(),
      greyColor(),
      blackColor(),
      greyColor(),
    ],
  );
}

Container blackColor() {
  return Container(
    height: 50,
    width: 50,
    color: Colors.black,
  );
}

Container greyColor() {
  return Container(
    height: 50,
    width: 50,
    color: Colors.grey,
  );
}