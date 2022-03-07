import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:teamang_hackathon/botnavbar.dart';
import 'package:teamang_hackathon/home.dart';

class Share extends StatefulWidget {
  Share({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.yellow[700],
          title: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'Share',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 180.0, top: 20),
                  child: Text(
                    'Give what you have',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150.0, top: 10),
                  child: Text(
                    'Please add a photo and description of the item',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Add Photo',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250.0, top: 20),
                  child: Text(
                    'Add Description',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0, top: 20),
                  child: Container(
                    width: 250,
                    child: TextFormField(
                      minLines: 4,
                      maxLines: 8,
                      decoration: InputDecoration(
                        hintText: 'Description',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 250.0, top: 20),
                  child: Text(
                    'Pick up Instruction',
                    style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0, top: 20),
                  child: Container(
                    width: 250,
                    child: TextFormField(
                      minLines: 4,
                      maxLines: 8,
                      decoration: InputDecoration(
                        hintText: 'Description',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      minimumSize: Size(250, 40),
                      backgroundColor: Colors.blue[900],
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BotNavBar()),
                      );
                    },
                    child: Text('Finish'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
