import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui18theme/login.dart';
import 'package:ui18theme/signup.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (int page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                  children: [
                    OnboardingPage(

                      imagePath: 'assets/images/Sitfly.png',
                      title: 'Find a fun flight for your\n next trip   ',
                      description:
                          'Try the TICKETS application to book the next\n flight ticket',
                    ),
                    // Padding(
                    //
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: ClipRRect(
                    //
                    //     borderRadius: BorderRadius.circular(30),
                    //     child: Image.asset('assets/images/airhosts.png',fit: BoxFit.cover,  width: 410,
                    //         height: 450),
                    //
                    //   ),
                    //
                    // ),

                    OnboardingPage(
                      imagePath: 'assets/images/skyinterior.png',
                      title: 'Ready to Expore the\n vast world',
                      description:
                          'An easy-to-use app to book \n your next flight ticket.',
                    ),
                    OnboardingPage(
                      imagePath: 'assets/images/flow.png',
                      title: 'Ready to explore the world',
                      description: 'Lets explore the vast\n world together.',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: WormEffect(
                  dotWidth: 20,
                  dotHeight: 5,
                  activeDotColor: Colors.blue,
                  spacing: 6,
                ),
              ),
              SizedBox(height: 14),
              currentPage == 2
                  ? Container(
                      height: 52,
                      width: 340,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.blue,
                            elevation: 0.0,
                            side: BorderSide(color: Colors.white)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signup()),
                          );
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    )
                  : Container(
                height: 52,
                    child: TextButton(
                        onPressed: () {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceInOut,
                          );
                        },
                        child: Container(
                          height: 52,
                          child: SingleChildScrollView(
                            child: Text(
                              'next',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const OnboardingPage({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(25.0)),
            child: Image.asset(
              imagePath,
              width: 350,
              height: MediaQuery.of(context).size.height/1.5,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 15),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
        ),
      ],
    );
  }
}
