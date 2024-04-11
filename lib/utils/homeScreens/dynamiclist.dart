


import 'package:flutter/material.dart';

class DynamicList extends StatefulWidget {
  const DynamicList({super.key});

  @override
  State<DynamicList> createState() => _DynamicListState();
}

class _DynamicListState extends State<DynamicList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          centerTitle: true,
          leading: Icon(
            Icons.menu_open,
            color: Colors.white,
            size: 28,
          ),
          title: Text(
            "Dynamic List",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children:
               List.generate(l1.length,(index) => buildPaddingDynamicList(index : l1[index])),

          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blue.shade800,
              onPressed: () {
                setState(() {
                  l1.add(l1.length+1);
                });
              },
              child: const Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue.shade800,
              onPressed: () {
                setState(() {
                  l1.removeAt(l1.length-1);
                });
              },
              child: const Icon(
                Icons.remove,
                size: 30,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildPaddingDynamicList({required index}) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
                color: (index%2==0)?Colors.blue.shade200:Colors.blue.shade400,
                borderRadius: BorderRadius.circular(20)),
            child:  Align(
              child: Text(
                "$index",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


List<int>l1= [0];
