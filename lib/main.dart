import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anonymous(),
    );
  }
}

class Anonymous extends StatefulWidget {
  @override
  _AnonymousState createState() => _AnonymousState();
}

class _AnonymousState extends State<Anonymous> {

  //* Function for Setting button  
  void openSetting() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.pink,
            title: Text('Settings'),
          ),
          body: Center(
            child: Text('TODO: Add Settings Here'),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],

      //* AppBar functionality with different properties
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: Text('Anonymous'),
        actions: <Widget>[
          IconButton(
            onPressed: openSetting,
            icon: Icon(Icons.settings),
            tooltip: 'Setting Icon',
          ),
        ],
        elevation: 50.0,
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   tooltip: 'Menu Icon',
        //   onPressed: () {},
        // ),
        brightness: Brightness.dark,
      ),

      //* Properties of container
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          CircleAvatar(
            maxRadius: 50,
            backgroundColor: Colors.black,
            child: Icon(Icons.person, color: Colors.white, size: 50),
          ),
          Center(
            child: Text(
              'I am Nobody',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum,It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),

      //* Menu Bar using Drawer
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.pink[100]),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10)),
                  CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.person, color: Colors.white, size: 25),
                  ),
                  Center(
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Nobody!!',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Mail-ID'),
              leading: Icon(Icons.mail, 
              color: Colors.red,
              ),
            ),
            ListTile(
              title: Text('Gender'),
              leading: Icon(Icons.male,
              color: Colors.blue,),
            )
          ],
        ),
      ),

      //* Bottom Navigator Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink[100],
        currentIndex: 0,
        fixedColor: Colors.pink,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Comment',
            icon: Icon(Icons.comment),
          ),
          BottomNavigationBarItem(
              label: 'Profile', icon: Icon(Icons.account_circle))
        ],
        onTap: (int indexofItem) {}, //! Routing of item of bar comes here
      ),
    );
  }
}
