import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:harsh_signinpage/screens/auth/sign_in.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  List pagelistdata = [
    {
      "image": 'images/car_one.png',
      "title": 'Own your conversations',
      "discrption":
          'secure and independent communication that give you the same level of privacy as a face to face conversation in your own home'
    },
    {
      "image": 'images/virus.png',
      "title": 'second page',
      "discrption": 'this is second page'
    },
    {
      "image": 'images/car_one.png',
      "title": 'third page',
      "discrption": 'this is third page'
    },
  ];

  Color whiteColor = Colors.white;
  Color otherColor = const Color.fromARGB(255, 1, 20, 51);
  PageController pagecontroller = PageController();

  int currentpage = 0;
  onchanged(int index) {
    setState(() {
      currentpage = index;
    });
  }

  contiuemethod() {
    //  Get.to(thirdPage());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: pagecontroller,
              itemCount: pagelistdata.length,
              onPageChanged: onchanged,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 100, 10, 20),
                      child: Image.asset(pagelistdata[index]['image']),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        pagelistdata[index]['title'],
                        style: TextStyle(color: whiteColor, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Text(
                        pagelistdata[index]['discrption'],
                        style: TextStyle(color: whiteColor, fontSize: 16),
                      ),
                    ),
                  ],
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  (currentpage == (pagelistdata.length - 1))
                      ? ElevatedButton(
                          onPressed: contiuemethod, child: Text('continue'))
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List<Widget>.generate(pagelistdata.length,
                              (index) {
                            return AnimatedContainer(
                              duration: Duration(microseconds: 200),
                              height: 10,
                              width: (index == currentpage) ? 10 : 10,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: (index == currentpage)
                                      ? Colors.green
                                      : Colors.grey),
                            );
                          }),
                        ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 80, 10, 20),
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0))),
                          onPressed: () {},
                          child: Text(
                            "create account",
                            style: TextStyle(color: whiteColor),
                          )),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(SignInPage());
                      },
                      child: Text(
                        "i already have an account",
                        style: TextStyle(color: Colors.green),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}
