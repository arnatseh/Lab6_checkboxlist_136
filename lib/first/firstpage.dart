import 'package:flutter/material.dart';
import 'package:lab06checkboxlisttile/hobby.dart';

class MyFirstpage extends StatefulWidget {
  const MyFirstpage({super.key});

  @override
  State<MyFirstpage> createState() => _MyFirstpageState();
}

class _MyFirstpageState extends State<MyFirstpage> {
  List<hobby> hobbies = [];
  List<String>hbselect = []; 

  @override
  void initState() {
    super.initState();
    hobbies = hobby.getHobby();
    print(hobbies);
  }

  List<Widget> createHobbycheckbox(){
    List<Widget> mywidets = [];

    for (var hb in hobbies) {
      mywidets.add(
        CheckboxListTile(
          title: Text(hb.name),
          value: hb.checked, onChanged: (value) {
          
            setState(() {
              hb.checked =value!;
              if (hb.checked) {
                hbselect.add(hb.name);
              }
              else {
                hbselect.remove(hb.name);
              }
            print(hbselect.join());
            });

        },)
      );

    }

    return mywidets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab06 checkboxListtile"),
      ),

      body: Column(
        children: [
          const Text("งานอดิเรก"),
          //ใส่ checkbox
          Column(
            children: createHobbycheckbox(),),
            Text(hbselect.join(','))
        ],
      ),
    );
  }
}