import 'package:flutter/material.dart';

class MenuDemo extends StatefulWidget {
  const MenuDemo({Key? key}) : super(key: key);

  @override
  State<MenuDemo> createState() => _MenuDemoState();
}

class _MenuDemoState extends State<MenuDemo> {
  var courses = ["B.Tech", "M.Tech","MBA","BBA","BCA","Deploma"];
  var firstCourse = "B.Tech";
  var choices = ["Inbox", "Sent Items", "Junk-mails", "Help", "Sign Out"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo Interface"),backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  print("Helped Icon Clicked");
                },
                icon: Icon(Icons.help)),
            TextButton(
                onPressed: () {
                  print("Login Button Clicked");
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
            PopupMenuButton(onSelected: (String? newItem) {
              print(newItem);
            }, itemBuilder: (BuildContext context) {
              return choices.map((String myChoice) {
                return PopupMenuItem(
                  child: Text(myChoice),
                  value: myChoice,
                );
              }).toList();
            })
          ],
        ),
        body: Center(
          child: Column( 
            children: [ 
              Container( 
                margin: EdgeInsets.symmetric(vertical: 20),
                // ignore: prefer_const_constructors
                child: Text(
                  "Dropdown Menu",
                  // ignore: prefer_const_constructors
                  style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 253, 0, 0)),
                ),
              ),
              DropdownButton(
                items: courses.map((String dropDownItems) {
                  return DropdownMenuItem(
                    // ignore: sort_child_properties_last
                    child: Text(
                      dropDownItems,
                      style: TextStyle(
                          fontSize: 20,
                          color: (firstCourse == dropDownItems)
                              // ignore: prefer_const_constructors
                              ? Color.fromARGB(255, 0, 46, 253)
                              : Colors.black),
                    ),
                    value: dropDownItems,
                  );
                }).toList(),
                onChanged: (String? newItem) {
                  setState(() {
                    firstCourse = newItem!;
                  });
                },
                value: firstCourse,
              )
            ],
          ),
        ),
      ),
    );
  }
}