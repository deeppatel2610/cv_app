import 'package:flutter/material.dart';
import 'package:resume_builder/utils/global.dart';

import '../../../utils/colors.dart';
import '../../../utils/list_for_languages.dart';
import '../../main components/app_bar_method.dart';

class Languages extends StatefulWidget {
  const Languages({super.key});

  @override
  State<Languages> createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
        text: 'Languages',
        isButton: true,
        context: context,
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              worldLanguages.length,
                  (index) => Column(
                children: [
                  CheckboxListTile(
                    title: Text(
                      worldLanguages[index],
                      style: const TextStyle(fontSize: 20),
                    ),
                    value: worldLanguagesStatus[index],
                    onChanged: (value) {
                      setState(() {
                        worldLanguagesStatus[index] = value!;
                      });
                      languagesAdd.add(worldLanguages[index]);
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
              Navigator.of(context).pushNamed('/Interest');
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
