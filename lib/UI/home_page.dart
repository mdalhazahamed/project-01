import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_01/Device/Destop.dart';
import 'package:project_01/Device/Phone.dart';
import 'package:project_01/UI/color.dart';
import 'package:url_launcher/link.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final _questions = const [
    {
      'question': 'How long is New Zealand’s Ninety Mile Beach?',
    },
    {
      'question':
          'In which month does the German festival of Oktoberfest mostly take place?',
    },
    {
      'question': 'Who composed the music for Sonic the Hedgehog 3?',
    },
    {
      'question':
          'In Georgia (the state), it’s illegal to eat what with a fork?',
    },
    {
      'question':
          'Which part of his body did musician Gene Simmons from Kiss insure for one million dollars?',
    },
    {
      'question': 'In which country are Panama hats made?',
    },
    {
      'question': 'From which country do French fries originate?',
    },
    {
      'question': 'Which sea creature has three hearts?',
    },
    {
      'question': 'Which European country eats the most chocolate per capita?',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Color(0xffF3F6F6),
            body: SingleChildScrollView(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 800) {
                    return Container(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Image.asset(
                                  'assets/logo.png',
                                  height: 100.h,
                                  width: 80.w,
                                ),
                                SizedBox(width: 120.w),
                                Container(
                                    height: 35.h,
                                    width: 110.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff4F7C87), width: 2),
                                        //color: Colors.amber,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Link(
                                        target: LinkTarget.blank,
                                        uri: Uri.parse(
                                            'https://www.timewell.io/'),
                                        builder: (context, followLink) =>
                                            TextButton(
                                                onPressed: followLink,
                                                child: Text(
                                                  'Record Their answer',
                                                  style: TextStyle(
                                                      color: kTextColor),
                                                ))))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 100.h,
                          ),
                          Text(
                              'Grow closer to your loved ones \n by asking them this question',
                              style: TextStyle(
                                  color: Color(0xff4F7C87), fontSize: 14.sp)),
                          SizedBox(
                            height: 50.h,
                          ),
                          Container(
                              height: 150.h,
                              width: 320.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff4F7C87), width: 3),
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  'Record Their answer',
                                  style: TextStyle(color: Color(0xff4F7C87)),
                                ),
                              )),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                              height: 50.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff4F7C87), width: 2),
                                  color: Color(0xff4F7C87),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.copy_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '   Copy this question',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              )),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                              height: 50.h,
                              width: 150.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff4F7C87), width: 2),
                                  //color: Colors.amber,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: TextButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.skip_next_outlined,
                                      color: kTextColor,
                                    ),
                                    Text(
                                      '  Try another one',
                                      style: TextStyle(
                                          color: kTextColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16),
                                    ),
                                  ],
                                ),
                              )),
                        ],
                      ),
                    );
                  } else {
                    return Container(
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Image.asset(
                                  'assets/logo.png',
                                  height: 100.h,
                                  width: 80.w,
                                ),
                                SizedBox(width: 200.w),
                                Container(
                                    height: 35.h,
                                    width: 50.w,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff4F7C87), width: 2),
                                        //color: Colors.amber,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Link(
                                        target: LinkTarget.blank,
                                        uri: Uri.parse(
                                            'https://www.timewell.io/'),
                                        builder: (context, followLink) =>
                                            TextButton(
                                                onPressed: followLink,
                                                child: Text(
                                                  'Record Their answer',
                                                  style: TextStyle(
                                                      color: kTextColor),
                                                ))))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 80.h,
                          ),
                          Text(
                              'Grow closer to your loved ones \n by asking them this question',
                              style: TextStyle(
                                  color: Color(0xff4F7C87), fontSize: 5.sp)),
                          SizedBox(
                            height: 50.h,
                          ),
                          Container(
                              height: 150.h,
                              width: 200.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff4F7C87), width: 3),
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  'Record Their answer',
                                  style: TextStyle(color: Color(0xff4F7C87)),
                                ),
                              )),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  height: 35.h,
                                  width: 60.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xff4F7C87), width: 2),
                                      color: Color(0xff4F7C87),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.copy_outlined,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          '   Copy this question',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 4.sp),
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                  height: 35.h,
                                  width: 50.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xff4F7C87), width: 2),
                                      //color: Colors.amber,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.skip_next_outlined,
                                          color: kTextColor,
                                        ),
                                        Text(
                                          '  Try another one',
                                          style: TextStyle(
                                              color: kTextColor,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 4.sp),
                                        ),
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ),
          );
        });
  }
}
