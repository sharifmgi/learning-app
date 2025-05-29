// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_app/pages/home_page.dart'; // Import the HomePage widget
import 'package:my_app/pages/book_page.dart'; // Import the HomePage widget
import 'package:my_app/pages/ScreenThree.dart'; // Import the HomePage widget
import '../widgets/drawer.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Set this to false
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;  
  
  final List<Widget> _screens = [
    const ScreenThree(),
    const HomePageOne(),
    const BookListPage(),
  ];
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: const Color.fromARGB(
            255, 222, 11, 11), // Set the background color here
        title:  search_icon ? Text(
          'Ebook Library ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ) : TextField(
        decoration: InputDecoration(
          hintText: 'Search for books',
          filled: true,
          fillColor: Color.fromARGB(255, 227, 102, 102),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
        
        actions: [ 
          Container(
            child: Column(
              children: [ 
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      search_icon =  false ;
                    });
                    // Implement search functionality here
                  },
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
        ],
         bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for books',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.black,
                  onPressed: () {
                    // Implement search functionality here
                  },
                ),
              ],
            ),
          ),
        ), 
      ),*/

      appBar: AppBar(
       backgroundColor: const Color.fromARGB(
            255, 222, 11, 11), // Set the background color here
         title: Text(
          'Ebook Library ',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ), 
      ),
      drawer: TutorialDrawer(onBackButtonPressed: () {  },),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       const DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Color.fromARGB(255, 255, 11, 11),
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 12,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         title: const Text('Book List'),
      //         onTap: () {
      //           setState(() {
      //             _currentIndex = 0;
      //             Navigator.pop(context);
      //           });
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Exam'),
      //         onTap: () {
      //           setState(() {
      //             _currentIndex = 1;
      //             Navigator.pop(context);
      //           });
      //         },
      //       ),
      //       ListTile(
      //         title: const Text('Result'),
      //         onTap: () {
      //           setState(() {
      //             _currentIndex = 2;
      //             Navigator.pop(context);
      //           });
      //         },
      //       ),
      //     ],
      //   ),
      // ),
       body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _currentIndex,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        color: const Color.fromARGB(255, 222, 11, 11),
        height: 50,
        items: const <Widget>[
          IconTheme(
            data: IconThemeData(
                color: Colors.white), // Set the desired icon color
            child: Icon(Icons.home, size: 30),
          ),
          IconTheme(
            data: IconThemeData(
                color: Colors.white), // Set the desired icon color
            child: Icon(Icons.book, size: 30),
          ),
          IconTheme(
            data: IconThemeData(
                color: Colors.white), // Set the desired icon color
            child: Icon(Icons.settings, size: 30),
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Screen 1',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Screen 2',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ScreenThree1 extends StatelessWidget {
  const ScreenThree1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Screen 3',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
