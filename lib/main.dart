import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: _switchValue == false
                  ? const Image(
                      image: AssetImage(
                        'images/light bulb off.jpg',
                      ),
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    )
                  : const Image(
                      image: AssetImage(
                        'images/light-bulb-on.png',
                      ),
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
          ),

          Positioned(
            bottom: 60,
            right: 160,
            child: CupertinoSwitch(
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                }
                );
              },
              thumbColor: const Color(0xff76ff03),
              activeColor: const Color(0xff76ff03),
              trackColor: const Color(0xffffffff),


            ),

          ),

        ],
      ),
    );
  }
}
