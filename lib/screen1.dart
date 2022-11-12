import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final formKey = GlobalKey<FormState>();

  var Gender;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 130,
                  height: 130,
                ),
              ),
            ),
          ),
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Your Name: ",
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Jessie",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Gender: ",
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(
                            value: "Male",
                            groupValue: Gender,
                            onChanged: (value) {
                              setState(() {
                                Gender = value;
                              });
                              print(Gender);
                            }),
                        Text("Male"),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: "Female",
                            groupValue: Gender,
                            onChanged: (value) {
                              setState(() {
                                Gender = value;
                              });
                              print(Gender);
                            }),
                        Text("Female")
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "E-mail: ",
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "jessie@gmail.com",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Phone Number: ",
                  style: TextStyle(fontSize: 15.0),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "+91-0000000000",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print("Valid");
                    } else {
                      print("Invalid");
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ]),
      ),
    ));
  }
}