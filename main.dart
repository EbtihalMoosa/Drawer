import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

         appBar: AppBar(
          backgroundColor: Color.fromRGBO(234, 165, 109, 1),
          title: Text("Title"),
    
          ), 
  

        drawer: Drawer(
          width: 250,
           child: Column(
          children: [
        SizedBox(width: 220,
       child: DrawerHeader(child: Column(children: [
       CircleAvatar( radius: 35 ,backgroundImage: AssetImage("assest/post.jpg",),
       

              ), SizedBox(height: 30,),
              Text("Profile")
              ]),)
              ),

       ListTile(title: Text("Home"),
      leading: Icon(Icons.home, color: Colors.black),),

       ListTile(title: Text("Setting"),
    leading: Icon(Icons.settings, color: Colors.black,),),

      ListTile(title: Text("Favourites"),
    leading: Icon(Icons.favorite, color: Colors.red,),),

      ListTile(title: Text("Shopping"),
    leading: Icon(Icons.shopping_bag, color: Colors.black),),

      ListTile(title: Text("Apps"),
    leading: Icon(Icons.apps, color: Colors.black),),

    ListTile(title: Text("Share with people"),
    leading: Icon(Icons.share, color: Colors.black),),

       ListTile(title: Text("About"),
    leading: Icon(Icons.help, color: Colors.black),),

    ListTile(title: Text("Logout"),
    leading: Icon(Icons.logout, color: Colors.black),),

            ],

          )


        ),

       

      ),
      
      );
    
    
  }
}
