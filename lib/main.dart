import 'package:flutter/material.dart';
import 'package:spotify/navigations/tabbar.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
        darkTheme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.white10,
            type: BottomNavigationBarType.fixed,
            selectedLabelStyle: TextStyle(
              fontSize: 12,
            ),
              unselectedLabelStyle: TextStyle(
                fontSize: 12,
              ),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white38,
          )
        ),
        home: Tabbar(),
      debugShowCheckedModeBanner: false,
    );
  }
}