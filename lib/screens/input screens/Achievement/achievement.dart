import 'package:flutter/material.dart';
import 'package:resume_builder/screens/main%20components/app_bar_method.dart';
import 'package:resume_builder/screens/main%20components/input_box_method.dart';
import 'package:resume_builder/screens/main%20components/input_row_icon_method.dart';
import 'package:resume_builder/utils/global.dart';

import '../../../utils/colors.dart';

class Achievement extends StatefulWidget {
  const Achievement({super.key});

  @override
  State<Achievement> createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
        text: 'Achievement',
        isButton: true,
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                achievementList.length,
                (index) => achievementColumnMethod(index: index),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 210),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  achievementList.add({
                    'Achievement': TextEditingController(),
                    'Description': TextEditingController(),
                  });
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 170,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  'Add Achievement',
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          temp(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/project');
            },
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                'Next',
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget achievementColumnMethod({required int index}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: primary, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
            left: 8,
            right: 8,
            top: 10,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Achievement',
                    style: TextStyle(color: textColorForInput, fontSize: 20),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (achievementList.length != 1) {
                          achievementList.removeLast();
                        }
                      });
                    },
                    icon: Icon(
                      Icons.delete_outline,
                      color: primary,
                      size: 20,
                    ),
                  )
                ],
              ),
              temp(),
              inputRowIconMethod(
                text: 'Achievement',
                icon: Icons.emoji_events_outlined,
                isNumber: false,
                isAddress: false,
                control: achievementList[index]['Achievement'],
              ),
              temp(),
              inputRowIconMethod(
                text: 'Description',
                icon: Icons.description_outlined,
                isNumber: false,
                isAddress: true,
                control: achievementList[index]['description'],
              )
            ],
          ),
        ),
      ),
    );
  }
}
