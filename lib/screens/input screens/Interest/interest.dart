import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/global.dart';
import '../../../utils/list_for_interest.dart';
import '../../main components/app_bar_method.dart';

class Interest extends StatefulWidget {
  const Interest({super.key});

  @override
  State<Interest> createState() => _InterestState();
}

class _InterestState extends State<Interest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarMethod(
        text: 'Interest',
        isButton: true,
        context: context,
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...List.generate(
              jobInterests.length,
                  (index) => Column(
                children: [
                  CheckboxListTile(
                    title: Text(
                      jobInterests[index],
                      style: const TextStyle(fontSize: 20),
                    ),
                    value: jobInterestsStatus[index],
                    onChanged: (value) {
                      setState(() {
                        jobInterestsStatus[index] = value!;
                      });
                      jobInterestsAdd.add(jobInterests[index]);
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
              Navigator.of(context).pushNamed('/Achievement');
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
