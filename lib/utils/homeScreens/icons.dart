

import 'package:flutter/material.dart';


class IconScreenScroll extends StatefulWidget {
  const IconScreenScroll({super.key});

  @override
  State<IconScreenScroll> createState() => _IconScreenScrollState();
}

class _IconScreenScrollState extends State<IconScreenScroll> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu_open,size: 28,color: Colors.black,),
          centerTitle: true,
          backgroundColor: Colors.grey.shade400,
          title: const Text(
            "Icons",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    rowContainers(Icon(Icons.add,size: 40,)),
                    rowContainers(Icon(Icons.remove_red_eye,size: 40,)),
                    rowContainers(Icon(Icons.arrow_back_ios_new_rounded,size: 40,)),
                    rowContainers(Icon(Icons.arrow_forward_ios,size: 40,)),
                    rowContainers(Icon(Icons.alarm,size: 40,)),
                    rowContainers(Icon(Icons.menu,size: 40,)),
                    rowContainers(Icon(Icons.bookmark_border,size: 40,)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    rowContainers(Icon(Icons.verified_user,size: 40,)),
                    rowContainers(Icon(Icons.account_circle_outlined,size: 40,)),
                    rowContainers(Icon(Icons.all_inclusive,size: 40,)),
                    rowContainers(Icon(Icons.add_a_photo_outlined,size: 40,)),
                    rowContainers(Icon(Icons.access_time_outlined,size: 40,)),
                    rowContainers(Icon(Icons.menu,size: 40,)),
                    rowContainers(Icon(Icons.bookmark_border,size: 40,)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    rowContainers(Icon(Icons.wifi_outlined,size: 40,)),
                    rowContainers(Icon(Icons.add_circle_outline,size: 40,)),
                    rowContainers(Icon(Icons.add_reaction_outlined,size: 40,)),
                    rowContainers(Icon(Icons.adjust_sharp,size: 40,)),
                    rowContainers(Icon(Icons.airplanemode_on_outlined,size: 40,)),
                    rowContainers(Icon(Icons.alternate_email_rounded,size: 40,)),
                    rowContainers(Icon(Icons.arrow_circle_up_rounded,size: 40,)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    rowContainers(Icon(Icons.arrow_upward,size: 40,)),
                    rowContainers(Icon(Icons.arrow_downward_rounded,size: 40,)),
                    rowContainers(Icon(Icons.bookmark_border,size: 40,)),
                    rowContainers(Icon(Icons.ad_units,size: 40,)),
                    rowContainers(Icon(Icons.brightness_3,size: 40,)),
                    rowContainers(Icon(Icons.code,size: 40,)),
                    rowContainers(Icon(Icons.android,size: 40,)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    rowContainers(Icon(Icons.male_sharp,size: 40,)),
                    rowContainers(Icon(Icons.near_me,size: 40,)),
                    rowContainers(Icon(Icons.ondemand_video,size: 40,)),
                    rowContainers(Icon(Icons.palette,size: 40,)),
                    rowContainers(Icon(Icons.qr_code_outlined,size: 40,)),
                    rowContainers(Icon(Icons.receipt,size: 40,)),
                    rowContainers(Icon(Icons.save_alt,size: 40,)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    rowContainers(Icon(Icons.access_time_filled,size: 40,)),
                    rowContainers(Icon(Icons.back_hand_outlined,size: 40,)),
                    rowContainers(Icon(Icons.cached,size: 40,)),
                    rowContainers(Icon(Icons.dashboard_customize,size: 40,)),
                    rowContainers(Icon(Icons.eco_outlined,size: 40,)),
                    rowContainers(Icon(Icons.menu,size: 40,)),
                    rowContainers(Icon(Icons.bookmark_border,size: 40,)),
                  ],
                ),
              ),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    rowContainers(Icon(Icons.vertical_distribute_outlined,size: 40,)),
                    rowContainers(Icon(Icons.keyboard_alt_outlined,size: 40,)),
                    rowContainers(Icon(Icons.join_inner,size: 40,)),
                    rowContainers(Icon(Icons.label_important,size: 40,)),
                    rowContainers(Icon(Icons.tag_rounded,size: 40,)),
                    rowContainers(Icon(Icons.undo,size: 40,)),
                    rowContainers(Icon(Icons.video_call_rounded,size: 40,)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    rowContainers(Icon(Icons.verified_user,size: 40,)),
                    rowContainers(Icon(Icons.account_circle_outlined,size: 40,)),
                    rowContainers(Icon(Icons.all_inclusive,size: 40,)),
                    rowContainers(Icon(Icons.add_a_photo_outlined,size: 40,)),
                    rowContainers(Icon(Icons.access_time_outlined,size: 40,)),
                    rowContainers(Icon(Icons.menu,size: 40,)),
                    rowContainers(Icon(Icons.bookmark_border,size: 40,)),
                  ],
                ),
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    rowContainers(Icon(Icons.add,size: 40,)),
                    rowContainers(Icon(Icons.remove_red_eye,size: 40,)),
                    rowContainers(Icon(Icons.arrow_back_ios_new_rounded,size: 40,)),
                    rowContainers(Icon(Icons.arrow_forward_ios,size: 40,)),
                    rowContainers(Icon(Icons.alarm,size: 40,)),
                    rowContainers(Icon(Icons.menu,size: 40,)),
                    rowContainers(Icon(Icons.bookmark_border,size: 40,)),
                  ],
                ),
              ),






            ],
          ),
        ),
      ),
    );
  }

  Padding rowContainers(Icon icon) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(20)
        ),
        child:  icon,
      ),
    );
  }
}
