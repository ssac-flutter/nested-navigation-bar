import 'package:flutter/material.dart';
import 'package:keep_bottomnav/third_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.green,
        child: Column(
          children: [
            const Text('1'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 10);
              },
              child: const Text('return'),
            ),
          ],
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<NavigatorState> navHome = GlobalKey();
  final GlobalKey<NavigatorState> navIntro = GlobalKey();

  List<Widget> screens() => [
    GestureDetector(
      child: const FirstScreen(),
      onTap: () async {
        final result = await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );

        print(result); // null
      },
    ),
    Navigator(
      key: navHome,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const ThirdScreen());
      },
    ),
    Navigator(
      key: navIntro,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const ThirdScreen());
      },
    ),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens()[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            _index = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'b'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'c'),
        ],
      ),
    );
  }
}
