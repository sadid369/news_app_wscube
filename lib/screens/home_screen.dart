import 'package:flutter/material.dart';
import 'package:news_app_wscube/constant/color_constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> arrCategory = [
    'All',
    'Political',
    'Sports',
    'Technology',
    'Showbiz',
    'Films',
    'Cricket',
    'Football',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.myGrayLight,
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          //header
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.apps_sharp,
                  size: 35,
                ),
                Container(
                  child: Row(
                    children: const [
                      Icon(
                        Icons.location_on,
                        color: ColorConstant.myRed,
                        size: 20,
                      ),
                      Text('Rembang, Ind')
                    ],
                  ),
                ),
                const Icon(
                  Icons.notifications_none_rounded,
                  size: 35,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          //TextField for Search
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find Interesting news',
                hintStyle: const TextStyle(color: ColorConstant.myGray),
                suffixIcon: Container(
                  alignment: Alignment.center,
                  width: 90,
                  height: 60,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: ColorConstant.myOrange,
                      borderRadius: BorderRadius.circular(25)),
                  child: const Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(35)),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          //News Category

          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: arrCategory
                    .map((e) => Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                              color: e == 'All'
                                  ? ColorConstant.myOrange
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(
                            '${e}',
                            style: TextStyle(
                              color: e == 'All'
                                  ? Colors.white
                                  : ColorConstant.myGray,
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),

          //Carousal image,
          Container(),
          //Page Indicator
          Container(),
          //Recommendation sell all
          Row(
            children: [],
          ),
          //New List
          // Container(
          //   child: ListView.builder(
          //     itemBuilder: (context, index) {},
          //   ),
          // )
        ],
      ),
    );
  }
}
