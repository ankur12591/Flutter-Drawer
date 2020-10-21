import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Drawer",

      home: MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Tutorial",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(
        child: Text("My Homepage",
          style: TextStyle(fontSize: 30),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepOrangeAccent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image(image: AssetImage("assets/flutter_logo.png",  ),
                    ),radius: 30,
                  ),
                  SizedBox(height: 10,),
                  Text("Ankur Sutariya",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15),
                  ),
                  Row(
                    children: [

                      Text("ankur12591@gmail.com",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15),
                      ),
                      Icon(Icons.arrow_drop_down,
                        color: Colors.white,),

                    ],
                  )
                ],
              ),
            ),
            ListTile(
                leading: Icon(Icons.folder),
                title: Text("My Files"),
                trailing: Icon(
                    Icons.arrow_right),
                onTap: (){}
            ),
            ListTile(
                leading: Icon(Icons.share),
                title: Text("Shared"),
                trailing: Icon(
                    Icons.arrow_right),
                onTap: (){}
            ),
            ListTile(
                leading: Icon(Icons.star),
                title: Text("Starred"),
                trailing: Icon(
                    Icons.arrow_right),
                onTap: (){}
            ),
            Divider(height: 2,
              thickness: 4,
              indent: 4,
              endIndent: 15,
            ),
            ListTile(
              leading: Icon(Icons.file_upload),
              title: Text("Upload"),
              trailing: Icon(
                  Icons.arrow_right),
              onTap: (){},
            ),
            ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(
                    Icons.arrow_right),
                onTap: (){}
            ),
            Divider(height: 2,
              thickness: 4,
              indent: 4,
              endIndent: 15,
            ),
            ListTile(
                leading: Icon(Icons.info),
                title: Text("About"),
                trailing: Icon(
                    Icons.arrow_right),
                onTap: (){}
            ),

          ],

        ),
      ),
    );
  }
}
