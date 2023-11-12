import 'package:flutter/material.dart';
import 'package:news_app_wscube/constant/color_constant.dart';
import 'package:news_app_wscube/screens/mobile%20screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
            padding: const EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                "assets/images/tower-2.jpeg",
                fit: BoxFit.cover,
                height: 520,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
                // color: Colors.red,
                ),
            width: MediaQuery.of(context).size.width,
            child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: const [
                    Text(
                      "News from around the",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "world for you ",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Best time to read. take your time to read ",
                      style:
                          TextStyle(fontSize: 18, color: ColorConstant.myGray),
                    ),
                    Text(
                      "little more of this world",
                      style:
                          TextStyle(fontSize: 18, color: ColorConstant.myGray),
                    ),
                  ],
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 55,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstant.myOrange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
                child: const Text(
                  'Get Stared',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
