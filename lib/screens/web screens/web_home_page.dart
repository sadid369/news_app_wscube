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
    double space = MediaQuery.of(context).size.width * 0.02;
    double mWidth = MediaQuery.of(context).size.width;
    double mHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(space),
        child: Column(
          children: [
            //header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: mWidth * 0.3,
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
                  width: mWidth * 0.15,
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
              height: 7,
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
              height: mHeight * 0.02,
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
              height: space,
            ),
            //main Contain
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: double.infinity,
                          height: mHeight * 0.255,
                          child: Image.network(
                            'https://plus.unsplash.com/premium_photo-1674375039817-cb0a39ad2f98?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aWNlJTIwbW91bnRhaW58ZW58MHx8MHx8fDA%3D',
                            fit: BoxFit.cover,
                          )),
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
                        'fficia eiusmod quis esse id est aliquip. Cillum eiusmod proident aute anim tempor deserunt tempor amet mollit nostrud. Id eiusmod Lorem officia est occaecat aliquip nisi.',
                        style: GoogleFonts.poppins(fontSize: 8),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  'https://images.unsplash.com/photo-1587778082149-bd5b1bf5d3fa?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw5NDUyNDk0fHxlbnwwfHx8fHw%3D',
                                ),
                              ),
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wode Warren',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                'Newsman',
                                style: GoogleFonts.poppins(
                                  fontSize: 7,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Divider(),
                      Text(
                        'Photography',
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        ' est esse. Irure enim sit qui quis nulla. Magna ad aliqua irure nulla mollit ex ex deserunt aliqua tempor pariatur sit excepteur proident. In nulla deserunt esse nostrud. Laboris sit exercitation incididunt aute ex duis elit aliquip laboris nulla aliqua est reprehenderit aliqua.',
                        style: GoogleFonts.poppins(
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: space,
                ),
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        SizedBox(
                            width: double.infinity,
                            height: 300,
                            child: Image.network(
                              'https://plus.unsplash.com/premium_photo-1674375039817-cb0a39ad2f98?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aWNlJTIwbW91bnRhaW58ZW58MHx8MHx8fDA%3D',
                              fit: BoxFit.cover,
                            )),
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
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Text(
                            'Dolor adipisicing qui qui elit ea nulla exercitation anim. Occaecat irure reprehenderit proident aute sunt id aliquip ad occaecat cupidatat est. Id aliquip cupidatat in nulla incididunt do magna et cupidatat pariatur occaecat. Exercitation fugiat et fugiat anim laboris. Reprehenderit ad laboris mollit consectetur non cillum culpa incididunt enim duis. Tempor est dolor culpa sit officia ex.fficia eiusmod quis esse id est aliquip. Cillum eiusmod proident aute anim tempor deserunt tempor amet mollit nostrud. Id eiusmod Lorem officia est occaecat aliquip nisi.',
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  width: space,
                ),
                Expanded(
                    child: Column(
                  children: [
                    SizedBox(
                        width: double.infinity,
                        height: 150,
                        child: Image.network(
                          'https://plus.unsplash.com/premium_photo-1674375039817-cb0a39ad2f98?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aWNlJTIwbW91bnRhaW58ZW58MHx8MHx8fDA%3D',
                          fit: BoxFit.cover,
                        )),
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
                      'fficia eiusmod quis esse id est aliquip. Cillum eiusmod proident aute anim tempor deserunt tempor amet mollit nostrud. Id eiusmod Lorem officia est occaecat aliquip nisi.',
                      style: GoogleFonts.poppins(fontSize: 8),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                'https://images.unsplash.com/photo-1587778082149-bd5b1bf5d3fa?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw5NDUyNDk0fHxlbnwwfHx8fHw%3D',
                              ),
                            ),
                            color: Colors.blue,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Wode Warren',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              'Newsman',
                              style: GoogleFonts.poppins(
                                fontSize: 7,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(),
                    Text(
                      'Photography',
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      ' est esse. Irure enim sit qui quis nulla. Magna ad aliqua irure nulla mollit ex ex deserunt aliqua tempor pariatur sit excepteur proident. In nulla deserunt esse nostrud. Laboris sit exercitation incididunt aute ex duis elit aliquip laboris nulla aliqua est reprehenderit aliqua.',
                      style: GoogleFonts.poppins(
                        fontSize: 10,
                      ),
                    )
                  ],
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
