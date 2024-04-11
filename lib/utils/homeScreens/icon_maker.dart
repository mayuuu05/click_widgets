
import 'package:flutter/material.dart';


class IconEditor extends StatefulWidget {
  const IconEditor({super.key});

  @override
  State<IconEditor> createState() => _IconMakerState();
}

class _IconMakerState extends State<IconEditor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(
          Icons.menu_open,
          size: 28,
        ),
        title: const Text(
          'Icons Editor',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: buildColumn(),
        ),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        Container(
          height: 380,
          width: 420,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                )
              ]),
          child: Icon(
            tapIcon,
            size: 80,
            color: tapColor,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 60,
          width: 420,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ]),
          alignment: Alignment.center,
          child: Text(
            "Select Color",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 100,
          width: 420,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  colorList.length,
                      (index) => InkWell(
                    onTap: () {
                      setState(() {
                        tapColor = colorList[index];
                      });
                    },
                    child: ColorBoxs(
                      color: colorList[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 60,
          width: 420,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ]),
          alignment: Alignment.center,
          child: Text(
            "Select Icon",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade700,
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 100,
          width: 420,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  colorList.length,
                      (index) => InkWell(
                    onTap: () {
                      setState(() {
                        tapIcon = iconList[index];
                      });
                    },
                    child: IconBox(
                      icon: iconList[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Container ColorBoxs({required Color color}) {
  return Container(
    height: 80,
    width: 80,
    margin: const EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(15),
    ),
  );
}


Container IconBox({required IconData icon}) {
  return Container(
    height: 70,
    width: 70,
    margin: const EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ]),
    child: Icon(
      icon,
      size: 30,
    ),
  );
}

List<Color> colorList = [
  Colors.orange,
  Colors.blue,
  Colors.purple,
  Colors.red,
  Colors.brown,
  Colors.green,
  Colors.grey,
  Colors.teal,
  Colors.cyanAccent,
  Colors.pinkAccent,
];

List<IconData> iconList = [
  Icons.add,
  Icons.remove_red_eye,
  Icons.access_time,
  Icons.account_circle,
  Icons.mail,
  Icons.join_inner_sharp,
  Icons.arrow_back_ios_new_rounded,
  Icons.all_inclusive_rounded,
  Icons.menu_open,
  Icons.add_a_photo_outlined,
];

Color tapColor = Colors.black;
IconData tapIcon = Icons.arrow_forward_ios;


