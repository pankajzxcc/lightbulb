import'package:flutter/material.dart';
void main(){
  runApp( const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ),);
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage('images/light bulb off.jpg',),
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
