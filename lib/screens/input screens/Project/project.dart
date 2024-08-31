import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/global.dart';
import '../../main components/app_bar_method.dart';
import '../../main components/input_box_method.dart';
import '../../main components/input_row_icon_method.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
        text: 'Project',
        isButton: true,
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                projectList.length,
                (index) => projectColumnMethod(index: index),
              )
            ],
          ),
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
                  projectList.add({
                    'project': TextEditingController(),
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
                  'Add Project',
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
              Navigator.of(context).pushNamed('/pdf');
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
                'Create PDF',
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

  Widget projectColumnMethod({required int index}) {
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
                    ' project',
                    style: TextStyle(color: textColorForInput, fontSize: 20),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if (achievementList.length != 1) {
                          projectList.removeLast();
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
                text: 'Project',
                icon: Icons.group_add_outlined,
                isNumber: false,
                isAddress: false,
                control: projectList[index]['project'],
              ),
              temp(),
              inputRowIconMethod(
                text: 'Description',
                icon: Icons.description_outlined,
                isNumber: false,
                isAddress: true,
                control: projectList[index]['Description'],
              )
            ],
          ),
        ),
      ),
    );
  }
}
