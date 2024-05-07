import 'package:creekapp/widgets/custom%20_backbutton.dart';
import 'package:creekapp/widgets/custom_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../const/assets/image_assets.dart';
import '../../const/assets/svg_assets.dart';
import '../../widgets/custom_text.dart';
import 'chat_screen.dart';

class MainChat extends StatefulWidget {
  const MainChat({super.key});

  @override
  State<MainChat> createState() => _MainChatState();
}

class _MainChatState extends State<MainChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Column(children: [
        ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
                height: 160.h,
                // padding: EdgeInsets.symmetric(vertical: 50.h),
                decoration: BoxDecoration(
                    color: Color(0xff29604E),
                    image: DecorationImage(
                        image: AssetImage(AppImages.appbardesign),
                        fit: BoxFit.cover)),
                child: SafeArea(
                    child: Column(children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    CustomBackButton(),
                    SizedBox(
                      width: 20.w,
                    ),
                    InterCustomText(
                      text: 'Book Chats',
                      textColor: Colors.white,
                      fontsize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ])
                ])))),
        SizedBox(
          height: 57.h,
        ),
        ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: messageListing.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final message=messageListing[index];
              return ListTile(
                onTap: () {
                  CustomRoute.navigateTo(context, ChatScreen(messagedetail:message));
                },
                leading: Container(
                  alignment: Alignment.bottomRight,
                  height: 62.h,
                  width: 62.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage( messageListing[index]['messageImage'],))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(

                     AppImages.onlinedot,
                      height: 10.h,
                      width: 10.w,
                    ),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 200.w,
                      child: LexendCustomText(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        text: messageListing[index]['messagename'],
                        textColor: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontsize: 16.sp,
                      ),
                    ),
                    LexendCustomText(
                      text: messageListing[index]['Timestamp'],
                      textColor: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontsize: 12.sp,
                    ),
                  ],
                ),
                subtitle: LexendCustomText(
                  text: messageListing[index]['messagetext'],
                  textColor: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontsize: 12.sp,
                ),
              );
            })
      ])
    ])));
  }
}

List<dynamic> messageListing = [
  {
    'messageImage': AppImages.profile1,
    'messagename': 'Memory',
    'messagetext': 'Hi ',
    'Timestamp': '12:52'
  },
  {
    'messageImage': AppImages.profile2,
    'messagename': 'Harry Potter and the cursed',
    'messagetext': 'How are you',
    'Timestamp': '01:52'
  },
  {
    'messageImage': AppImages.profile3,
    'messagename': 'Soul',
    'messagetext': 'I am fine',
    'Timestamp': '03:53'
  }
];