import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WebHomePage extends StatefulWidget {
  const WebHomePage({Key? key}) : super(key: key);

  @override
  _WebHomePageState createState() => _WebHomePageState();
}

class _WebHomePageState extends State<WebHomePage> {
  bool isDark = false;
  List<String> categoryList = [
    'Politics',
    'Business',
    'Tech',
    'Arts',
    'Science',
    'Health',
    'Sports'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: Column(
          children: [
            //header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                      Text(
                        'Home',
                        style: GoogleFonts.poppins(),
                      ),
                      Text(
                        'Latest News',
                        style: GoogleFonts.poppins(),
                      ),
                      Text(
                        'Reviews',
                        style: GoogleFonts.poppins(),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Contact Us',
                        style: GoogleFonts.poppins(),
                      ),
                      Switch(
                        value: isDark,
                        onChanged: (value) {
                          isDark = value;
                          setState(() {});
                          print(isDark);
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            //Latest News
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                'Latest News',
                style: GoogleFonts.poppins(
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //News Category Row
            Row(
                children: categoryList
                    .map((e) => Container(
                          margin: EdgeInsets.only(right: 20),
                          alignment: Alignment.center,
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(),
                          ),
                          child: Text(
                            e,
                            style: GoogleFonts.poppins(),
                          ),
                        ))
                    .toList()),
            SizedBox(
              height: 20,
            ),
            //main Contain
            Row(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 100, height: 150, child: Image.network('')),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Unrecognized genius',
                        style: GoogleFonts.poppins(fontSize: 24),
                      ),
                    ),
                    Text(
                      'In sunt enim minim do proident nisi reprehenderit sit. Quis ut est laborum velit laborum velit officia eiusmod quis esse id est aliquip. Cillum eiusmod proident aute anim tempor deserunt tempor amet mollit nostrud. Id eiusmod Lorem officia est occaecat aliquip nisi.',
                      style: GoogleFonts.poppins(fontSize: 8),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          // width: 200,
                          alignment: Alignment.topLeft,
                          // padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Wode Warren',
                                style: GoogleFonts.poppins(),
                              ),
                              Text(
                                'Newsman',
                                style: GoogleFonts.poppins(),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                )),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [],
                    )),
                Expanded(
                    child: Column(
                  children: [],
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
