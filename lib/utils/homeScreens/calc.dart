


import 'package:flutter/material.dart';



class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          leading: const Icon(
            Icons.menu_open,
            color: Colors.black,
            size: 28,
          ),

          title: const Text(
            "Calculator",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "$count",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:() {
                      setState(() {
                        count-=2;
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              width: 4
                          ),
                          color: Colors.amber,
                          borderRadius: const BorderRadius.all(
                              Radius.circular(20))
                      ),
                      child: const Center(
                        child: Text(
                          "-2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        count+=2;
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 170,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 4,
                          ),
                          color: Colors.amber,
                          borderRadius: const BorderRadius.all(
                              Radius.circular(20))
                      ),
                      child: const Center(
                        child: Text(
                          "+2",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        count-=4;
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(
                              color: Colors.black,
                              width: 4
                          ),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(20))
                      ),
                      child: const Center(
                        child: Text(
                          "-4",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        count+=4;
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 170,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(
                              color: Colors.black,
                              width: 4
                          ),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(20))
                      ),
                      child:  const Center(
                        child: Text(
                          "+4",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        count=0;
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(
                              color: Colors.black,
                              width: 4
                          ),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(20))
                      ),
                      child: const Center(
                        child: Text(
                          'Clear',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
int count = 0;
