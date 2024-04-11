
import 'package:flutter/material.dart';

class MapList extends StatefulWidget {
  const MapList({super.key});

  @override
  State<MapList> createState() => _MapListState();
}

class _MapListState extends State<MapList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          leading: const Icon(
            Icons.menu_open,
            color: Colors.white,
            size: 28,
          ),
          title: const Text(
            "Map",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              buildContainerList('Exit',Icon(Icons.exit_to_app,size: 28,)),
              buildContainerList('Play',Icon(Icons.play_arrow,size: 28,)),
              buildContainerList('Pause',Icon(Icons.pause,size: 28,)),
              buildContainerList('Stop',Icon(Icons.stop,size: 28,)),
              buildContainerList('Close',Icon(Icons.close,size: 28,)),
              buildContainerList('Delete',Icon(Icons.delete,size: 28,)),
              buildContainerList('Email',Icon(Icons.email,size: 28,)),
              buildContainerList('Run',Icon(Icons.run_circle_outlined,size: 28,)),
              buildContainerList('Infinite',Icon(Icons.all_inclusive_sharp,size: 28,)),
              buildContainerList('Moon',Icon(Icons.brightness_3_sharp,size: 28,)),
              buildContainerList('Right',Icon(Icons.gpp_good_rounded,size: 28,)),
              buildContainerList('Locaion',Icon(Icons.location_on_outlined,size: 28,)),
              buildContainerList('Profile',Icon(Icons.account_circle_rounded,size: 28,)),
              buildContainerList('Bank',Icon(Icons.account_balance,size: 28,)),
              buildContainerList('Add',Icon(Icons.add,size: 28,)),
              buildContainerList('Alarm',Icon(Icons.access_alarms,size: 28,)),
              buildContainerList('Photo',Icon(Icons.add_a_photo_outlined,size: 28,)),
              buildContainerList('Hospital',Icon(Icons.add_box_outlined,size: 28,)),
              // Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainerList(String name, Icon icon) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
      ),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
      ),
      child:  Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$name',
              style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.w600),
            ),
            icon,
          ],
        ),
      ),
    );
  }
}
