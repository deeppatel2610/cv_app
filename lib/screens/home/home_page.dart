import 'package:flutter/material.dart';
import 'package:resume_builder/utils/colors.dart';
import 'package:resume_builder/utils/global.dart';

import '../main components/app_bar_method.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: appBarMethod(
        context: context,
        text: 'My Recent CVs',
        isButton: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 12,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/personal');
                      setState(() {
                        mainCV.add(
                          ListTile(
                            leading: Image(
                              image: fileImg != null
                                  ? FileImage(fileImg!)
                                  : AssetImage(profileImg),
                            ),
                            title: Text("${txtFirstName.text} ${txtLastName.text}"),
                            subtitle: Text(txtProfession.text),
                            trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  mainCV.removeLast();
                                });
                              },
                              icon: const Icon(Icons.delete_outline),
                            ),
                          ),
                        );
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Create CV',
                        style: TextStyle(
                          fontSize: 25,
                          color: textColor,
                        ),
                      ),
                    ),
                  ),
                  ...List.generate(
                    mainCV.length,
                    (index) => ListTile(
                      leading: Image(
                        image: fileImg != null
                            ? FileImage(fileImg!)
                            : AssetImage(profileImg),
                      ),
                      title: Text("${txtFirstName.text} ${txtLastName.text}"),
                      subtitle: Text(txtProfession.text),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            mainCV.removeLast();
                          });
                        },
                        icon: Icon(Icons.delete_outline),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.home,
                        color: bgColor,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.download,
                        color: bgColor,
                        size: 30,
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: secondary,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/personal');
                          },
                          icon: Icon(
                            Icons.add,
                            color: bgColor,
                            size: 30,
                          ),
                        )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.settings,
                        color: bgColor,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.workspace_premium,
                        color: bgColor,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

