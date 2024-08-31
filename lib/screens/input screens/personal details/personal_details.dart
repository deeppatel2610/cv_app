import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder/screens/main%20components/app_bar_method.dart';
import 'package:resume_builder/utils/colors.dart';
import '../../../utils/global.dart';
import '../../main components/input_box_method.dart';
import '../../main components/input_row_icon_method.dart';
import '../../main components/input_row_method.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appBarMethod(
        context: context,
        text: 'Personal Details',
        isButton: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 11,
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          XFile? img = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          setState(() {
                            fileImg = File(img!.path);
                          });
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: primary),
                            image: DecorationImage(
                                image: fileImg != null
                                    ? FileImage(fileImg!)
                                    : AssetImage(profileImg),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      temp(),
                      inputRowMethod(
                        controlFor1: txtFirstName,
                        controlFor2: txtLastName,
                        icons: Icons.person_outlined,
                        text: 'First Name',
                        text2: 'Last Name',
                        isAddress: false,
                        isNumber: false,
                      ),
                      temp(),
                      inputRowIconMethod(
                        control: txtProfession,
                        text: 'Profession',
                        isAddress: false,
                        icon: Icons.work_outline,
                        isNumber: false,
                      ),
                      temp(),
                      inputRadioButtonMethod(),
                      temp(),
                      inputRowIconMethod(
                        control: txtNationality,
                        isAddress: false,
                        text: 'Nationality',
                        icon: Icons.flag_outlined,
                        isNumber: false,
                      ),
                      temp(),
                      inputRowIconMethod(
                        control: txtDateOfBirth,
                        isAddress: false,
                        isNumber: true,
                        text: 'Date of Birth',
                        icon: Icons.calendar_month_outlined,
                      ),
                      temp(),
                      inputRowIconMethod(
                        control: txtPhone,
                        isAddress: false,
                        text: 'Phone',
                        icon: Icons.phone_outlined,
                        isNumber: true,
                      ),
                      temp(),
                      inputRowIconMethod(
                        control: txtEmailAddress,
                        isAddress: false,
                        text: 'Email Address',
                        icon: Icons.email_outlined,
                        isNumber: false,
                      ),
                      temp(),
                      inputRowIconMethod(
                        control: txtAddress,
                        isAddress: true,
                        text: 'Address',
                        icon: Icons.location_on_outlined,
                        isNumber: false,
                      ),
                      temp(),
                      inputRowIconMethod(
                        control: txtAbout,
                        isAddress: true,
                        text: 'About Me',
                        icon: Icons.badge,
                        isNumber: false,
                      ),
                      temp(),
                      temp(),
                      temp(),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          if(formKey.currentState!.validate() && fileImg!=null)
          {
            Navigator.of(context).pushNamed('/education');
          }
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
    );
  }

  Row inputRadioButtonMethod() {
    return Row(
      children: [
        Icon(
          Icons.wc_outlined,
          size: 25,
          color: primary,
        ),
        Expanded(
          child: RadioListTile(
            fillColor: WidgetStatePropertyAll(primary),
            title: const Text('Male'),
            value: 'Male',
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value!;
              });
            },
          ),
        ),
        Expanded(
          child: RadioListTile(
            fillColor: WidgetStatePropertyAll(primary),
            title: const Text('Female'),
            value: 'Female',
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value!;
              });
            },
          ),
        ),
      ],
    );
  }
}
