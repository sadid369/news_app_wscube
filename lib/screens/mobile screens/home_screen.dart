import 'package:flutter/material.dart';
import 'package:news_app_wscube/constant/color_constant.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
  List<String> arrImage = [
    "https://images.unsplash.com/photo-1485115905815-74a5c9fda2f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1436&q=80",
    "https://images.unsplash.com/reserve/LJIZlzHgQ7WPSh5KVTCB_Typewriter.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1392&q=80",
    "https://images.unsplash.com/photo-1516321497487-e288fb19713f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    "https://images.unsplash.com/photo-1612798287863-a4ae5259b680?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1632&q=80",
    "https://images.unsplash.com/photo-1613416721666-920abc2f4436?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
    "https://images.unsplash.com/photo-1516534775068-ba3e7458af70?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
    "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1469&q=80",
  ];
  final CarouselController carouselController = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.myGrayLight,
      body: SingleChildScrollView(
        child: Column(
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
            SizedBox(
              height: 20,
            ),
            //Carousal image,
            Container(
              child: CarouselSlider.builder(
                  carouselController: carouselController,
                  itemCount: arrImage.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      padding: EdgeInsets.all(5),
                      width: MediaQuery.of(context).size.width,
                      height: 280,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          arrImage[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 1.5,
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      })),
            ),
            //Page Indicator
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: arrImage.asMap().entries.map((entry) {
                  return GestureDetector(
                    // onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: _current == entry.key ? 12 : 7.0,
                      height: _current == entry.key ? 12 : 7.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          border: _current == entry.key ? Border.all() : null,
                          shape: BoxShape.circle,
                          color: _current == entry.key
                              ? Colors.white
                              : Colors.black.withOpacity(0.7)),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            //Recommendation sell all
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Recommendation',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // New List
            Container(
              // color: Colors.blue,
              height: 200,
              width: double.infinity,
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: arrImage.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    // width: double.infinity,
                    // height: 200,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              arrImage[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Political News'),
                                  Icon(Icons.more_horiz)
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Text(
                                  'Employees at a company in Ameria start',
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: ColorConstant.myOrange,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        backgroundColor: Colors.white,
        destinations: [
          NavigationDestination(
              icon: Icon(
                Icons.home,
                color: ColorConstant.myGray,
              ),
              label: 'Home'),
          NavigationDestination(icon: Icon(Icons.save), label: 'Save'),
          NavigationDestination(
              icon: Icon(Icons.assistant_navigation), label: 'Navigation'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
