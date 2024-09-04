import 'package:flutter/material.dart';
import 'package:testagain/search.dart';
import 'package:testagain/search2.dart';
import 'package:testagain/home.dart';
// import 'search.dart';
/// Flutter code sample for [NavigationBar].
//



void main() => runApp(const NavigationBarApp());

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.all(
            const TextStyle(color: Colors.white),
          ),
        ),
        ),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  
  // final List<Widget> _screens = const [
  //   Home(),
  //   Search(),
  //   Collections(),
  //   Help()
  // ];

  // void onTap(int index) {
  //   _controller.jumpToPage(index);
  // }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.lightBlueAccent,
        backgroundColor:  const Color.fromARGB(255, 0, 92, 193),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.white,
              ),
            icon: Icon(
              Icons.home_outlined,
              color: Colors.white,
              ),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.search,
              color: Colors.white,
              ),
            icon: Icon(
              Icons.search_outlined,
              color: Colors.white,
              ),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.library_books,
              color: Colors.white,
              ),
            icon: Icon(
              Icons.library_books_outlined,
              color: Colors.white,
              ),
            label: 'Collections',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.help,
              color: Colors.white,
              ),
            icon: Icon(
              Icons.help_outline,
              color: Colors.white,
              ),
            label: 'Help',
          ),
        ],
      ),
        appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image(
            image: AssetImage('assets/ns.jpeg'),
          ),
        ),
        title: const Text('Nova Scotia Archives'),
        backgroundColor: const Color.fromARGB(255, 0, 92, 193),
        foregroundColor: Colors.white,
      ),
      body: [
        const HomePage(),
        const SearchPage2(),
        const Center(child: Text('Nothing to see here...')),
        const Center(child: Text('This is not the page you are looking for...')),
      ][currentPageIndex],
      );
  }}