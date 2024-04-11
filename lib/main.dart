import 'package:click_widgets/utils/homeScreens/calc.dart';
import 'package:click_widgets/utils/homeScreens/chessboard.dart';
import 'package:click_widgets/utils/homeScreens/dynamiclist.dart';
import 'package:click_widgets/utils/homeScreens/icon_maker.dart';
import 'package:click_widgets/utils/homeScreens/icons.dart';
import 'package:click_widgets/utils/homeScreens/map.dart';
import 'package:flutter/material.dart';


void main()
{
  runApp(HomeScreen(),);
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _CalculatorState();
}

class _CalculatorState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:IconEditor() ,
    );
  }
}





