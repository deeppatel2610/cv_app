import 'package:flutter/material.dart';
import 'package:resume_builder/screens/main%20components/app_bar_method.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';

import '../../../utils/lists_for.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
        text: 'Skills',
        isButton: true,
        context: context,
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              jobSkills.length,
              (index) => Column(
                children: [
                  CheckboxListTile(
                    title: Text(
                      jobSkills[index],
                      style: const TextStyle(fontSize: 20),
                    ),
                    value: jobSkillsStatus[index],
                    onChanged: (value) {
                      setState(() {
                        jobSkillsStatus[index] = value!;
                      });
                      skillsAdd.add(jobSkills[index]);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/Languages');
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
}
