import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';

// img
String logo = 'assets/img/logo.png';
String img1 = 'assets/img/img1.png';
String img2 = 'assets/img/img2.png';
String img3 = 'assets/img/img3.jpg';
String profileImg = 'assets/img/profile.webp';

// gender
String gender = 'Male';

// image picker
ImagePicker imagePicker = ImagePicker();
File? fileImg;

// demo
// address -> '75-ganshyam'
// About ->  I'm Deep, a passionate developer with expertise in various frameworks. My goal is to secure a job at Google, where I can leverage my skills to make a significant impact. In my free time, I enjoy playing cricket, combining my love for teamwork and strategy.
// rnw ->Red & White Multimedia Education, NSDC partner and ISO 9001:2015 certified firm under the part of Red & White Education Private Limited providing accredited courses since 2008 and have successfully trained over 37,500+ students.
//
// surat , gujarat , India
// CV -> Passionate and goal-driven developer with expertise in frameworks and a strong ambition to work at Google. Skilled in problem-solving, software development, and team collaboration. Adept at using modern technologies to build efficient and scalable solutions.


// personal details
TextEditingController txtFirstName = TextEditingController();
TextEditingController txtLastName = TextEditingController();
TextEditingController txtProfession = TextEditingController();
TextEditingController txtNationality = TextEditingController();
TextEditingController txtDateOfBirth = TextEditingController();
TextEditingController txtPhone = TextEditingController();
TextEditingController txtEmailAddress =
    TextEditingController();
TextEditingController txtAddress = TextEditingController();
TextEditingController txtAbout = TextEditingController();
// education
List EducationList = [
  {
    'SchoolName': TextEditingController(),
    'DegreeName': TextEditingController(),
    'Start': TextEditingController(),
    'End': TextEditingController(),
    'Description': TextEditingController(),
  }
];

// education
List WorkHistoryList = [
  {
    'JobTitle': TextEditingController(),
    'CompanyName': TextEditingController(),
    'Start': TextEditingController(),
    'End': TextEditingController(),
    'Description': TextEditingController(),
  }
];

// skills
List skillsAdd = [];

// languages
List languagesAdd = [];

// Interests
List jobInterestsAdd = [];

// Achievement
List achievementList = [
  {
    'Achievement': TextEditingController(),
    'Description': TextEditingController(),
  }
];

// project
List projectList = [
  {
    'project': TextEditingController(),
    'Description': TextEditingController(),
  }
];

// main list
List mainCV = [];