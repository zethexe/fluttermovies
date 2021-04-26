import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.blue, Colors.blueGrey])),
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://www.shareicon.net/data/512x512/2016/05/24/770117_people_512x512.png",
                          ),
                          radius: 90.0,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        FloatingActionButton(
                          child: Icon(Icons.camera_alt),
                          // Provide an onPressed callback.
                          onPressed: () {},
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                      ],
                    ),
                  ),
                )),
            Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Username",
                      style: TextStyle(color: Colors.blue, fontSize: 28.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: 'Zeth Alux',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      "Phone number",
                      style: TextStyle(color: Colors.blue, fontSize: 28.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: '4645793708',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Text(
                      "User email",
                      style: TextStyle(color: Colors.blue, fontSize: 28.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      initialValue: '17030696@itcelaya.edu.mx',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        letterSpacing: 2.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80.0),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.blue, Colors.blueGrey]),
                          borderRadius: BorderRadius.circular(80.0),
                        ),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: 100.0,
                            maxHeight: 40.0,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Save",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.0,
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
