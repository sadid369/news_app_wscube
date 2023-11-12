// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news_app_wscube/constant/color_constant.dart';

class NewsPage extends StatefulWidget {
  final String title;
  const NewsPage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.more_vert,
                    size: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Aliqua et ea est sit occaecat culpa.',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Posted 5 hours ago',
                    style: TextStyle(color: ColorConstant.myGray),
                  ),
                  Icon(
                    Icons.save_outlined,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 9),
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  'https://www.tbsnews.net/sites/default/files/styles/big_3/public/images/2023/01/20/ronaldo_messi.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Text(
                'Aliqua Lorem incididunt nostrud duis mollit',
                style: TextStyle(color: ColorConstant.myGray),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/CNN_International_logo.svg/2048px-CNN_International_logo.svg.png',
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cnn Indonesia',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.verified_rounded,
                    color: Colors.blue,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9),
              child: Text(
                  'Elit et eiusmod occaecat deserunt. Tempor mollit laboris velit laboris cupidatat ea amet proident Lorem aliqua Lorem mollit reprehenderit nisi. Velit cillum incididunt amet deserunt do. Minim elit deserunt Lorem esse nisi consequat sint irure voluptate id aliquip cupidatat. Esse esse laborum exercitation voluptate labore. Amet anim sint excepteur laborum velit sint in pariatur. Eu aute excepteur ea sit aliquip reprehenderit id ut.'),
            )
          ],
        ),
      ),
    );
  }
}
