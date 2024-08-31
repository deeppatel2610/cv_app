import 'package:flutter/material.dart';
import 'package:resume_builder/screens/main%20components/app_bar_method.dart';

import '../../../utils/colors.dart';
import '../../../utils/global.dart';
import '../../main components/input_box_method.dart';
import '../../main components/input_row_icon_method.dart';
import '../../main components/input_row_method.dart';

class WorkHistory extends StatefulWidget {
  const WorkHistory({super.key});

  @override
  State<WorkHistory> createState() => _WorkHistoryState();
}

class _WorkHistoryState extends State<WorkHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appBarMethod(
        text: 'Work History',
        isButton: true,
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 11,
              child: SingleChildScrollView(
                child: Form(
                  child: Column(
                    children: [
                      ...List.generate(
                        WorkHistoryList.length,
                        (index) => inputColumnMethod(index: index),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 230),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  EducationList.add({
                    'JobTitle': TextEditingController(),
                    'CompanyName': TextEditingController(),
                    'Start': TextEditingController(),
                    'End': TextEditingController(),
                    'Description': TextEditingController(),
                  });
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Text(
                  'Add Experience',
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
              Navigator.of(context).pushNamed('/skills');
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
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget inputColumnMethod({required int index}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: primary, width: 1),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 10, left: 8, right: 8, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ' Work History',
                    style: TextStyle(color: textColorForInput, fontSize: 20),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (WorkHistoryList.length != 1) {
                          WorkHistoryList.removeLast();
                        }
                      });
                    },
                    icon: Icon(
                      Icons.delete_outline,
                      color: primary,
                      size: 25,
                    ),
                  )
                ],
              ),
              temp(),
              inputRowIconMethod(
                text: 'Job Title',
                icon: Icons.school_outlined,
                isNumber: false,
                isAddress: false,
                control: WorkHistoryList[index]['JobTitle'],
              ),
              temp(),
              inputRowIconMethod(
                text: 'Company Name',
                icon: Icons.workspace_premium,
                isNumber: false,
                isAddress: false,
                control: WorkHistoryList[index]['CompanyName'],
              ),
              temp(),
              inputRowMethod(
                text: 'Start',
                text2: 'End',
                icons: Icons.calendar_month_outlined,
                isNumber: true,
                isAddress: false,
                controlFor1: WorkHistoryList[index]['Start'],
                controlFor2: WorkHistoryList[index]['End'],
              ),
              temp(),
              inputRowIconMethod(
                text: 'Description',
                icon: Icons.description_outlined,
                isNumber: false,
                isAddress: true,
                control: WorkHistoryList[index]['Description'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
