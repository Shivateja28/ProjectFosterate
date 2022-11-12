import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage1 extends StatefulWidget {
  const ProfilePage1({Key? key}) : super(key: key);

  @override
  State<ProfilePage1> createState() => _ProfilePage1State();
}

class _ProfilePage1State extends State<ProfilePage1> {

  final formKey = GlobalKey<FormState>();

  var Gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Expanded(flex: 1, child: _TopPortion()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Richie Lorie",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class _TopPortion extends StatelessWidget {
  const _TopPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: Image.network("https://th.bing.com/th/id/OIP.kICKBUZBtr-2aX6m_ur21wHaE7?w=183&h=122&c=7&r=0&o=5&dpr=1.4&pid=1.7",fit: BoxFit.cover,),
          )
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://th.bing.com/th/id/OIP.kICKBUZBtr-2aX6m_ur21wHaE7?w=183&h=122&c=7&r=0&o=5&dpr=1.4&pid=1.7')),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Container(

                      child: IconButton(
                        icon: Icon(Icons.edit_sharp,color: Colors.black,),
                        onPressed: (){},
                      ),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}